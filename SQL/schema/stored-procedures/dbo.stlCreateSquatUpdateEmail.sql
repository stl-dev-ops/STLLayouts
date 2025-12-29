SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateSquatUpdateEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateSquatUpdateEmail] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 8/1/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateSquatUpdateEmail]
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @i int,
			@todayIsBusinessDay nvarchar(1),
			@body nvarchar(MAX),
			@Recipient nvarchar(50),
			@RecipientsCSV nvarchar(1000)

	SET @todayIsBusinessDay = (SELECT BusinessDay FROM stlBusinessDaysCalendar WHERE BusinessDate = DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())));

	IF (@todayIsBusinessDay = 'Y')
	BEGIN
		
		SET @body = N'
<!DOCTYPE html>
<html><head><meta charset="utf-8"></head>
<body style="font-family:Arial;font-size:16px;">
<p>🌞 <strong>MOVE IT MOVE IT!</strong> 🌞</p>
<p>Holy desk warrior—time to shake off the chair glue!</p>
<p>Stand up, do <strong>5 squats</strong> (or jazz hands), and reset that spine.</p>
<p>Your legs called—they want <em>in</em> on the action.</p>
<p>You got <strong>30 seconds... GO!</strong> 💥</p>
</body></html>';
		DECLARE emailRecipientsCursor CURSOR
		FOR
			SELECT EmailAddress
			FROM stlEmailRecipients 
			WHERE StartDate < GETDATE() 
			AND ISNULL(EndDate, DATEADD(DAY, 1, GETDATE())) > GETDATE()
			AND EmailName = 'Squat'

		OPEN emailRecipientsCursor;
		FETCH NEXT FROM emailRecipientsCursor INTO
			@Recipient

			SET @i = 0;
			SET @RecipientsCSV = '';

			WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@i > 0)
				BEGIN
					SET @RecipientsCSV = @RecipientsCSV + ','
				END

				SET @RecipientsCSV = @RecipientsCSV + @Recipient;

				FETCH NEXT FROM emailRecipientsCursor INTO
					@Recipient

				SET @i = @i + 1
			END;

		CLOSE emailRecipientsCursor;
		DEALLOCATE emailRecipientsCursor;
		IF (@i > 0)
		BEGIN
			INSERT INTO stlEmails ([Subject], Body, RecipientsCSV)
			VALUES (N'🌞 MOVE IT MOVE IT! 🌞', @body, @RecipientsCSV );
		END
	END

END

