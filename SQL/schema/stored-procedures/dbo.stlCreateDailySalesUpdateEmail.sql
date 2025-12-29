SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateDailySalesUpdateEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateDailySalesUpdateEmail] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 7/31/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateDailySalesUpdateEmail] 
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @i int,
			@lastBusinessDateBeforeToday datetime,
			@todayIsBusinessDay nvarchar(1),
			@kla__rpn nvarchar(10),
			@QuoteDescription nvarchar(50),
			@afg_oms1 nvarchar(50),
			@quantity float,
			@formattedQuantity nvarchar(30),
			@unit nvarchar(30),
			@amount float,
			@total float,
			@formattedAmount nvarchar(30),
			@firstShip datetime,
			@lastShip datetime,
			@formattedShipDates nvarchar(50),
			@body nvarchar(max),
			@RecipientsCSV nvarchar(1000)


	SET @todayIsBusinessDay = (SELECT BusinessDay FROM stlBusinessDaysCalendar WHERE BusinessDate = DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())));

	SET @lastBusinessDateBeforeToday = (SELECT TOP 1 BusinessDate FROM stlBusinessDaysCalendar WHERE BusinessDay = 'Y' AND BusinessDate < DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) ORDER BY BusinessDate DESC);

	IF (@todayIsBusinessDay = 'Y')
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
		WHERE emails.EmailName = 'Daily Sales Report';

		DECLARE quotesCursor CURSOR
		FOR
			 SELECT v1bon___.kla__rpn, v1bon___.omschr__  
			 FROM v1bon___ LEFT JOIN  
			 links___ ON v1bon___.bon__ref = links___.tab__ref AND links___.tabname_ = 'v1bon___'  
			 WHERE (datum___ = @lastBusinessDateBeforeToday OR best_dat = @lastBusinessDateBeforeToday)  
			 AND kla__ref NOT IN ( '100208', '100506', '100509', '100109', '100222', '100349', '100376', '100377', '100453', '100490' )  
			 UNION  
			 SELECT kla__rpn, QuoteDescription  
			 FROM vw_stlQP_Quotes  
			 WHERE Deleted = 0 AND DATEADD(dd, 0, DATEDIFF(dd, 0, Created)) = @lastBusinessDateBeforeToday  
			 AND kla__ref NOT IN ( '100208', '100506', '100509', '100109', '100222', '100349', '100376', '100377', '100453', '100490' )  
			 ORDER BY kla__rpn, omschr__ 

		OPEN quotesCursor;
		FETCH NEXT FROM quotesCursor INTO
			@kla__rpn, @QuoteDescription

		SET @i = 0;

		SET @body = @body + '<br>Quotes entered ' + DATENAME(WEEKDAY, CAST(@lastBusinessDateBeforeToday as date)) + ', ' + CONVERT(varchar(10), CAST(@lastBusinessDateBeforeToday as date), 101) + ':<br><table><tr><th>Customer</th><th>Description</th></tr>';

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @body = @body + '<tr><td>' + @kla__rpn + '</td><td>' + @QuoteDescription + '</td></tr>';
			
			FETCH NEXT FROM quotesCursor INTO
				@kla__rpn, @QuoteDescription

			SET @i = @i + 1
		END;
		IF (@i = 0)
			BEGIN
				SET @body = @body + '<tr><td colspan="6">No quotes entered ' + DATENAME(WEEKDAY, CAST(@lastBusinessDateBeforeToday as date)) + ', ' + CONVERT(varchar(10), CAST(@lastBusinessDateBeforeToday as date), 101) + '</td></tr>';
			END
		SET @body = @body + '</table><br><br>';

		CLOSE quotesCursor;
		DEALLOCATE quotesCursor;

		DECLARE salesOrdersCursor CURSOR
		FOR 
			SELECT kla__rpn, afg_oms1, SUM(Quantity) AS Quantity, Unit, SUM(bedr__bm) AS Amount, MIN(vrzv_dat) FirstShipDate, MAX(vrzv_dat) LastShipDate  
			FROM 
			(
				SELECT bstlyn__.kla__rpn, bstlyn__.afg_oms1, bstlyn__.bedr__bm, vrzv_dat,  
					Quantity = 
					CASE 
						WHEN fac_eenh = 1 THEN b_aantal 
						WHEN fac_eenh = 2 THEN b_aantal / CASE WHEN bstlyn__.aant__e2 > 0 THEN bstlyn__.aant__e2 ELSE 1 END 
						WHEN fac_eenh = 3 THEN b_aantal / CASE WHEN bstlyn__.aant__e2 > 0 THEN bstlyn__.aant__e2 ELSE 1 END / CASE WHEN bstlyn__.aant__e3 > 0 THEN bstlyn__.aant__e3 ELSE 1 END 
						WHEN fac_eenh = 4 THEN b_aantal / CASE WHEN bstlyn__.aant__e2 > 0 THEN bstlyn__.aant__e2 ELSE 1 END / CASE WHEN bstlyn__.aant__e3 > 0 THEN bstlyn__.aant__e3 ELSE 1 END / CASE WHEN bstlyn__.aant__e4 > 0 THEN bstlyn__.aant__e4 ELSE 1 END 
						WHEN fac_eenh = 5 THEN b_aantal / CASE WHEN bstlyn__.aant__e2 > 0 THEN bstlyn__.aant__e2 ELSE 1 END / CASE WHEN bstlyn__.aant__e3 > 0 THEN bstlyn__.aant__e3 ELSE 1 END / CASE WHEN bstlyn__.aant__e4 > 0 THEN bstlyn__.aant__e4 ELSE 1 END / CASE WHEN bstlyn__.aant__e5 > 0 THEN bstlyn__.aant__e5 ELSE 1 END END, 
					Unit = CASE  WHEN fac_eenh = 1 THEN eenh1int  WHEN fac_eenh = 2 THEN eenh2int  WHEN fac_eenh = 3 THEN eenh3int  WHEN fac_eenh = 4 THEN eenh4int  WHEN fac_eenh = 5 THEN eenh5int END   
	
				FROM bstlyn__ LEFT JOIN  
				vpakwy__ RIGHT JOIN  
				vpakpr__ ON vpakwy__.vpk__ref = vpakpr__.vpk__ref RIGHT JOIN  
				afgart__ ON vpakpr__.vpak_ref = afgart__.vpak_ref ON bstlyn__.afg__ref = afgart__.afg__ref  
				WHERE (bstlyn__.trn__srt <> 'R' AND bstlyn__.bst__dat = @lastBusinessDateBeforeToday) 
				AND bstlyn__.bedr__bm <> 0 
				AND bstlyn__.kla__ref NOT IN ('100208', '100109', '100222', '100349', '100376', '100377', '100453', '100490' )  
				AND NOT ((ISNULL(bstlyn__.bst__com, N'') + ISNULL(bstlyn__.afg_oms1, N'') + ISNULL(bstlyn__.afg_oms2, N'') + ISNULL(bstlyn__.bsbn_kla, N'') + ISNULL(bstlyn__.bsbn_kl2, N'') LIKE '%sample%'))  
			) Orders 
			GROUP BY kla__rpn, afg_oms1, Unit  
			ORDER BY kla__rpn, afg_oms1 

		OPEN salesOrdersCursor;
		FETCH NEXT FROM salesOrdersCursor INTO
			@kla__rpn, @afg_oms1, @quantity, @unit, @amount, @firstShip, @lastShip

		SET @i = 0;
		SET @total = 0;
		SET @body = @body + '<br>Orders entered ' + DATENAME(WEEKDAY, CAST(@lastBusinessDateBeforeToday as date)) + ', ' + CONVERT(varchar(10), CAST(@lastBusinessDateBeforeToday as date), 101) + ':<br><table><tr><th>Customer</th><th>Product</th><th>Quantity</th><th>Unit</th><th>Amount</th><th>Expected ship date</th></tr>';

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @formattedQuantity = FORMAT(@quantity, 'N0');
			SET @formattedAmount = FORMAT(@amount, 'C2');
			SET @total = @total + @amount; 
			IF (@firstShip = @lastShip)
				BEGIN
					SET @formattedShipDates = CONVERT(varchar(10), CAST(@firstShip as date), 101);
				END
			ELSE
				BEGIN
					SET @formattedShipDates = CONVERT(varchar(10), CAST(@firstShip as date), 101) + ' - ' + CONVERT(varchar(10), CAST(@lastShip as date), 101);
				END

			SET @body = @body + '<tr><td>' + @kla__rpn + '</td><td>' + @afg_oms1 + '</td><td style=''text-align:right''>' + @formattedQuantity + '</td><td>' + @unit + '</td><td style=''text-align:right''>' + @formattedAmount + '</td><td style=''text-align:center''>' + @formattedShipDates + '</td></tr>';
			
			FETCH NEXT FROM salesOrdersCursor INTO
				@kla__rpn, @afg_oms1, @quantity, @unit, @amount, @firstShip, @lastShip

			SET @i = @i + 1
		END;
		IF (@i = 0)
			BEGIN
				SET @body = @body + '<tr><td colspan="6">No orders entered ' + DATENAME(WEEKDAY, CAST(@lastBusinessDateBeforeToday as date)) + ', ' + CONVERT(varchar(10), CAST(@lastBusinessDateBeforeToday as date), 101) + '</td></tr>';
			END
		ELSE
			BEGIN
				SET @formattedAmount = FORMAT(@total, 'C2');
				SET @body = @body + '<tr><td style=''border-style:none''></td><td style=''border-style:none''></td><td style=''border-style:none''></td><td style=''border-style:none''></td><td style=''text-align:right;border-style:none''>' + @formattedAmount + '</td><td style=''border-style:none''></td></tr>';
			END
		SET @body = @body + '</table>';

		SET @body = @body + '</body></html>';

		CLOSE salesOrdersCursor;
		DEALLOCATE salesOrdersCursor;

		INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		VALUES ('Daily Sales Report, Confidential', @body, @RecipientsCSV );

		--INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
		--VALUES ('Daily Sales Report, Confidential', @body, 'jeffr@superlabel.com' );

	END

END

