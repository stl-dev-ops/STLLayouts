SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateMaterialOrderedNotificationEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateMaterialOrderedNotificationEmail] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 4/24/2025
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateMaterialOrderedNotificationEmail]
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
	WHERE emails.EmailName = 'Material Ordered';

	DECLARE ordersCursor CURSOR
	FOR
		SELECT orders.Ordered, m.art__rpn, m.art_oms1, s.lev__rpn, orders.Quantity  
		FROM 
		( 
			SELECT PO.bs___dat Ordered, PO_det.art__ref, PO_det.lev__ref, PO.grbonref, SUM(PO_det.gaant___) Quantity 
			FROM grdbon__ AS PO INNER JOIN   
			grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
			WHERE PO.bs___dat  = CAST(GETDATE() AS date) 
			GROUP BY PO.bs___dat, PO_det.art__ref, PO_det.lev__ref, PO.grbonref  
		) orders INNER JOIN 
		artiky__ m ON orders.art__ref = m.art__ref INNER JOIN 
		levbas__ s ON s.lev__ref = orders.lev__ref 

		WHERE 
		orders.Ordered >= 
			ISNULL(
					(SELECT MAX(Created) FROM stlEmails WHERE Subject LIKE 'Material Ordered:%'), 
					 CAST(GETDATE() AS date)
				)
		AND 
		(
			orders.art__ref IN
			(
				SELECT art__ref 
				FROM artiky__ m JOIN
				stlEmailsPO_MaterialOrdered mo ON m.art__rpn LIKE mo.art__rpn
				AND mo.StartDate <= GETDATE() AND GETDATE() <= ISNULL(mo.EndDate, DATEADD(DAY, 1, GETDATE()))
			)
			OR
			orders.lev__ref IN
			(
				SELECT lev__ref
				FROM stlEmailsPO_MaterialOrdered mo
				WHERE mo.art__rpn = '' AND mo.StartDate <= GETDATE() AND GETDATE() <= ISNULL(mo.EndDate, DATEADD(DAY, 1, GETDATE()))
			)
		)

	OPEN ordersCursor;
	FETCH NEXT FROM ordersCursor INTO 
		@deliveryTime, @art__rpn, @art_oms1, @lev__rpn, @quantity

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @subject = 'Material Ordered: ' + FORMAT(@quantity, 'N2') + ' of ' + @art__rpn + ' from ' + @lev__rpn + ' ordered ' + DATENAME(WEEKDAY, CAST(@deliveryTime as date)) + ', ' + CONVERT(varchar, @deliveryTime, 101) + '.'

		INSERT INTO stlEmails ([Subject], RecipientsCSV)
		VALUES (@subject, @RecipientsCSV);

		--INSERT INTO stlEmails ([Subject], RecipientsCSV)
		--VALUES (@subject, 'jeffr@superlabel.com');

		FETCH NEXT FROM ordersCursor INTO 
			@deliveryTime, @art__rpn, @art_oms1, @lev__rpn, @quantity
	END;

	CLOSE ordersCursor;
	DEALLOCATE ordersCursor;

END

