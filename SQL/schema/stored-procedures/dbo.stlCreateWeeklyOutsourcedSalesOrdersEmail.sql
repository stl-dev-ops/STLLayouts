SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateWeeklyOutsourcedSalesOrdersEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateWeeklyOutsourcedSalesOrdersEmail] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 8/23/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateWeeklyOutsourcedSalesOrdersEmail] 
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @i int,
			@OrderID nvarchar(6),
			@OrderDate datetime,
			@Customer nvarchar(10),
			@Product nvarchar(50),
			@ProductGroup nvarchar(40),
			@ExpectedShipDate datetime,
			@body nvarchar(4000),
			@RecipientsCSV nvarchar(1000)


	BEGIN
		
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
		WHERE emails.EmailName = 'Outsourced Sales Orders';

		DECLARE ordersCursor CURSOR
		FOR
			SELECT so.bst__ref OrderID, so.bst__dat OrderDate, so.kla__rpn Customer, so.afg_oms1 [Product], q.omschr__ ProductGroup, so.vrzv_dat ExpectedShipDate
			FROM bstlyn__ so JOIN
			afgart__ p ON so.afg__ref = p.afg__ref JOIN
			prodkl__ q ON p.prkl_ref = q.prkl_ref 
			WHERE p.prkl_ref IN ('070', '300', '998', '999')
			AND so.vrzv_dat BETWEEN DATEADD(DAY, -1, CAST(GETDATE() AS date)) AND DATEADD(DAY, 7, CAST(GETDATE() AS date))
			ORDER BY ExpectedShipDate 

		OPEN ordersCursor;
		FETCH NEXT FROM ordersCursor INTO
			@OrderID, @OrderDate, @Customer, @Product, @ProductGroup, @ExpectedShipDate;

		SET @i = 0;
		
		SET @body = @body + '<br>Outsourced Orders Expected to Ship this Week:'  + ':<br><table><tr><th>Order ID</th><th>Order Date</th><th>Customer</th><th>Product</th><th>Product Group</th><th>Expected Ship Date</th></tr>';

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @body = @body + '<tr><td>' + @OrderID + '</td><td>' + CONVERT(varchar, @OrderDate, 101) + '</td><td>' + @Customer + '</td><td>' + @Product + '</td><td>' + @ProductGroup + '</td><td>' + CONVERT(varchar, @ExpectedShipDate, 101) + '</td></tr>';

			FETCH NEXT FROM ordersCursor INTO
				@OrderID, @OrderDate, @Customer, @Product, @ProductGroup, @ExpectedShipDate;

				SET @i = @i + 1;
		END;
		IF (@i = 0)
		BEGIN
			SET @body = @body + '<tr><td colspan="6">No outsourced orders expected to ship this week.</td></tr>';
		END
		
		SET @body = @body + '</table>';

		SET @body = @body + '</body></html>';

		CLOSE ordersCursor;
		DEALLOCATE ordersCursor;


		INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		VALUES ('Outsourced Sales Orders', @body, @RecipientsCSV );

		--INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		--VALUES ('Outsourced Sales Orders', @body, 'jeffr@superlabel.com' );

	END

END

