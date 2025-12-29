SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateSVSProductMovementsEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateSVSProductMovementsEmail] AS' 
END
-- =============================================
-- Author:		Jeff Rupp
-- Create date: 12/5/2024
-- Description:	Create Email for SVS Product Movments
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateSVSProductMovementsEmail] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @PreviousProductDescription nvarchar(50),
			@ProductDescription         nvarchar(50),
			@Customer                   nvarchar(10),
			@Date                       datetime,
			@Movment                    nvarchar(50),
			@Quantity                   float,
			@Stock                      float,
			@body                       nvarchar(max),
			@RecipientsCSV              nvarchar(1000)

	BEGIN

	SET @body = '<!DOCTYPE html><html><head><style> table, th, td {padding: 1px 5px 1px 5px;border: 1px solid black;border-collapse: collapse;}</style></head><body>';

		SELECT @RecipientsCSV = EmailAddresses 
		FROM
		(
			SELECT EmailName, CAST(STUFF
			((SELECT N', ' + EmailAddress
			FROM (SELECT EmailName, EmailAddress FROM stlEmailRecipients er
			WHERE StartDate <= GETDATE() AND ISNULL(EndDate, GETDATE()) >= GETDATE()) ea
			WHERE er.EmailName = ea.EmailName 
			ORDER BY EmailName FOR XML PATH('')), 1, 2, '') AS NVARCHAR(4000)) EmailAddresses
			FROM stlEmailRecipients er
			GROUP BY EmailName
		) emails
		WHERE emails.EmailName = 'SVS Product Movements Report';

		DECLARE svsCursor CURSOR
		FOR

			SELECT ProductDescription, Customer, [Date], Movement, Quantity, Stock
			FROM vw_stlSVS_ProductMovements 
			ORDER BY ProductID, [Date], OrderOverride, ISNULL([OrderID], ''), ISNULL([SalesOrderID],'')

		OPEN svsCursor;
		FETCH NEXT FROM svsCursor INTO
			@ProductDescription, @Customer, @Date, @Movment, @Quantity, @Stock

		SET @PreviousProductDescription = @ProductDescription;

		SET @body = @body + '<br><table><tr><th>Product</th><th>Customer</th><th>Date</th><th>Movement</th><th>Quantity</th><th>Stock</th></tr>';

		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF (@PreviousProductDescription <> @ProductDescription)
				BEGIN
					SET @body = @body + '</table><br><br><table><tr><th>Product</th><th>Customer</th><th>Date</th><th>Movement</th><th>Quantity</th><th>Stock</th></tr>';
				END

			SET @body = @body + '<tr><td>' + @ProductDescription  + '</td><td>' + ISNULL(@Customer, '') + '</td><td>' + FORMAT(@Date, 'MM/dd/yyyy') + '</td><td>' + @Movment + '</td><td style=''text-align:right;''>' + FORMAT(@Quantity, 'N0') + '</td><td style=''text-align:right;''>' + FORMAT(@Stock, 'N0') + '</td></tr>';
			
			SET @PreviousProductDescription = @ProductDescription;
			FETCH NEXT FROM svsCursor INTO
				@ProductDescription, @Customer, @Date, @Movment, @Quantity, @Stock;

		END;

		SET @body = @body + '</table><br><br></body></html>';

		CLOSE svsCursor;
		DEALLOCATE svsCursor;

		INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		VALUES ('SVS Product Movements Report', @body, @RecipientsCSV );
	END
END


