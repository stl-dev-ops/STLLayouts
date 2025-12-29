SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateMaterialPriceDiscrepancyEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateMaterialPriceDiscrepancyEmail] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 5/6/2025
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateMaterialPriceDiscrepancyEmail]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
    DECLARE @i int,
			@PO_Number nvarchar(6),
			@OrderLineItemID nvarchar(6),
			@Supplier nvarchar(10),
			@Category nvarchar(50),
			@MaterialID nvarchar(15),
			@MaterialDescription nvarchar(100),
			@OrderedQuantity float,
			@OrderedPrice float,
			@OrderedTotal float,
			@Real_delivery date,
			@DeliveredQuantity float,
			@Invoiced_price float,
			@InvoicedTotal float,
			@InvoiceDate date,
			@DEVIATION float,
			@DEVIATION_PERC float,
			@Confirmation_Supplier nvarchar(255),
			@Delivery_status nvarchar(255),
			@Invoice_status nvarchar(255),
			@subject nvarchar(1000),
			@body nvarchar(MAX),
			@RecipientsCSV nvarchar(1000)

	SET @body = '<!DOCTYPE html><html><head><style> table, th, td {padding: 1px 5px 1px 5px;border: 1px solid black;border-collapse: collapse;}</style></head><body>';

	SELECT @RecipientsCSV = EmailAddresses 
	FROM
	(
		SELECT EmailName, CAST(STUFF
		((SELECT N', ' + EmailAddress
		FROM (SELECT EmailName, EmailAddress FROM stlEmailRecipients er
		WHERE StartDate <= GETDATE() AND ISNULL(EndDate, '1/1/2050') >= GETDATE()) ea
		WHERE er.EmailName = ea.EmailName 
		ORDER BY EmailName FOR XML PATH('')), 1, 2, '') AS NVARCHAR(4000)) EmailAddresses
		FROM stlEmailRecipients er
		GROUP BY EmailName
	) emails
	WHERE emails.EmailName = 'Material Price Discrepancy';

	DECLARE deliveriesCursor CURSOR
	FOR
		SELECT 
			[PO#], [OrderLineItemID], [Supplier], [Category], [MaterialID], [MaterialDescription], [OrderedQuantity], [OrderedPrice], [OrderedTotal], [Real_delivery], [DeliveredQuantity],
			[Invoiced price], [InvoicedTotal], [InvoiceDate], [DEVIATION], [DEVIATION%], [Confirmation Supplier], [Delivery status], [Invoice status]
		FROM 
			vw_stlPO_MaterialPriceDiscrepancies mpd
		WHERE 
		--	mpd.InvoiceDate >= CAST(GETDATE() AS date)

		--AND
			OrderLineItemID NOT IN
			(
				SELECT OrderLineItemID
				FROM stlEmailsPOMaterialDiscrepancyHistory mpdh
				WHERE 
						mpdh.OrderLineItemID   = mpd.OrderLineItemID 
					AND mpdh.OrderedPrice	   = mpd.OrderedPrice 
					AND mpdh.DeliveredQuantity = mpd.DeliveredQuantity 
					AND mpdh.InvoicedPrice	   = mpd.[Invoiced price] 
			)


	OPEN deliveriesCursor;
	FETCH NEXT FROM deliveriesCursor INTO 
		@PO_Number, @OrderLineItemID, @Supplier, @Category, @MaterialID, @MaterialDescription, @OrderedQuantity, @OrderedPrice, @OrderedTotal, @Real_delivery, @DeliveredQuantity,
			@Invoiced_price, @InvoicedTotal, @InvoiceDate, @DEVIATION, @DEVIATION_PERC, @Confirmation_Supplier, @Delivery_status, @Invoice_status

	SET @i = 0;

	SET @body = @body + '<br>Price Discrepancy ' + DATENAME(WEEKDAY, CAST(@InvoiceDate as date)) + ', ' + 
			CONVERT(varchar(10), CAST(@InvoiceDate as date), 101) + 
			':<br><table><tr><th>PO#</th><th>Line#</th><th>Supplier</th><th>Material ID</th><th>Description</th><th>Ordered</th><th>Price</th><th>Total</th><th>Delivered</th><th>Delivered Quantity</th><th>Invoice Date</th><th>Invoice Price</th><th>Invoice Total</th><th>Deviation</th><th>Deviation %</th><th>Confirmation Supplier</th><th>Delivery status</th><th>Invoice status</th></tr>';

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @subject = 'Material Price Discrepancies Invoiced ' + DATENAME(WEEKDAY, CAST(@InvoiceDate as date)) + ', ' + CONVERT(varchar(30), CAST(@InvoiceDate as datetime), 22) + '.';

		SET @body = @body + '<tr>' + 
		'<td style=''text-align:center''>' + @PO_Number + '</td>' +
		'<td style=''text-align:center''>' + @OrderLineItemID + '</td>' +
		'<td style=''text-align:left''>'   + @Supplier + '</td>' +
		'<td style=''text-align:center''>' + @MaterialID + '</td>' +
		'<td style=''text-align:left''>'   + @MaterialDescription + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@OrderedQuantity, 'N2') + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@OrderedPrice, 'C5') + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@OrderedTotal, 'C2') + '</td>' +
		'<td style=''text-align:right''>'  + CONVERT(varchar, @Real_delivery, 101) + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@DeliveredQuantity, 'N2') + '</td>' +
		'<td style=''text-align:right''>'  + CONVERT(varchar, @InvoiceDate, 101) + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@Invoiced_price, 'C5') + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@InvoicedTotal, 'C2') + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@DEVIATION, 'C5') + '</td>' +
		'<td style=''text-align:right''>'  + FORMAT(@DEVIATION_PERC, 'P2') + '</td>' +
		'<td style=''text-align:center''>' + @Confirmation_Supplier + '</td>' +
		'<td style=''text-align:center''>' + @Delivery_status + '</td>' +
		'<td style=''text-align:center''>' + @Invoice_status + '</td>' +
		'</tr>';

		INSERT INTO stlEmailsPOMaterialDiscrepancyHistory (OrderLineItemID, DeliveredQuantity, OrderedPrice, InvoicedPrice)
		VALUES (@OrderLineItemID, @DeliveredQuantity, @OrderedPrice, @Invoiced_price);

		FETCH NEXT FROM deliveriesCursor INTO 
			@PO_Number, @OrderLineItemID, @Supplier, @Category, @MaterialID, @MaterialDescription, @OrderedQuantity, @OrderedPrice, @OrderedTotal, @Real_delivery, @DeliveredQuantity,
				@Invoiced_price, @InvoicedTotal, @InvoiceDate, @DEVIATION, @DEVIATION_PERC, @Confirmation_Supplier, @Delivery_status, @Invoice_status
		
		SET @i = @i + 1
	END;
	SET @body = @body + '</table>';

	SET @body = @body + '</body></html>';

	CLOSE deliveriesCursor;
	DEALLOCATE deliveriesCursor;

	IF (@i > 0)
	BEGIN
		INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		VALUES ('Material Price Discrepancies, Invoiced ' + DATENAME(WEEKDAY, CAST(GETDATE() as date)) + ', ' + CONVERT(varchar(30), CAST(GETDATE() as datetime), 22), @body, @RecipientsCSV );
	END

END

