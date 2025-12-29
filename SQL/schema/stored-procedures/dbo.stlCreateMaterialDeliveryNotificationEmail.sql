SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateMaterialDeliveryNotificationEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateMaterialDeliveryNotificationEmail] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 8/1/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateMaterialDeliveryNotificationEmail]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
    DECLARE @deliveryTime datetime,
			@art__rpn nvarchar(17),
			@art_oms1 nvarchar(250),
			@lev__rpn nvarchar(10),
			@quantity float,
			@subject nvarchar(1000),
			@RecipientsCSV nvarchar(1000)


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
	WHERE emails.EmailName = 'Material Delivered';

	DECLARE deliveriesCursor CURSOR
	FOR
		SELECT deliveries.Delivered, m.art__rpn, m.art_oms1, s.lev__rpn, deliveries.Quantity  
		FROM 
		( 
			SELECT DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_____), CAST(datum___ AS datetime)) Delivered, art__ref, lev__ref, grbonref, SUM(aantal__) Quantity 
			FROM stobew__ 
			WHERE soort___ = '2' AND datum___ = CAST(GETDATE() AS date) 
			GROUP BY DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_____), CAST(datum___ AS datetime)), art__ref, lev__ref, grbonref 
		) deliveries INNER JOIN 
		artiky__ m ON deliveries.art__ref = m.art__ref INNER JOIN 
		levbas__ s ON s.lev__ref = deliveries.lev__ref 

		WHERE 
		deliveries.Delivered >= 
			ISNULL(
					(SELECT MAX(Created) FROM stlEmails WHERE Subject LIKE 'Material Delivery:%'), 
					 CAST(GETDATE() AS date)
				)
		AND 
		(
			deliveries.art__ref IN
			(
				SELECT art__ref
			  FROM stlEmailsReceiptOfMaterialDeliveries
			  WHERE StartDate <= GETDATE() AND GETDATE() <= ISNULL(EndDate, DATEADD(DAY, 1, GETDATE()))
			)
			OR
			deliveries.lev__ref IN
			(
				SELECT lev__ref

			  FROM stlEmailsReceiptOfMaterialDeliveries
			  WHERE art__ref = '' AND StartDate <= GETDATE() AND GETDATE() <= ISNULL(EndDate, DATEADD(DAY, 1, GETDATE()))
			)
		)

	OPEN deliveriesCursor;
	FETCH NEXT FROM deliveriesCursor INTO 
		@deliveryTime, @art__rpn, @art_oms1, @lev__rpn, @quantity

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @subject = 'Material Delivery: ' + FORMAT(@quantity, 'N2') + ' of ' + @art__rpn + ' from ' + @lev__rpn + ' received ' + DATENAME(WEEKDAY, CAST(@deliveryTime as date)) + ', ' + CONVERT(varchar(30), CAST(@deliveryTime as datetime), 22) + '.'

		INSERT INTO stlEmails ([Subject], RecipientsCSV)
		VALUES (@subject, @RecipientsCSV);

		--INSERT INTO stlEmails ([Subject], RecipientsCSV)
		--VALUES (@subject, 'jeffr@superlabel.com');

		FETCH NEXT FROM deliveriesCursor INTO 
			@deliveryTime, @art__rpn, @art_oms1, @lev__rpn, @quantity
	END;

	CLOSE deliveriesCursor;
	DEALLOCATE deliveriesCursor;

END

