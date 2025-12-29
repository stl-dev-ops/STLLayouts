SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateMaterialReservedNotificationEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateMaterialReservedNotificationEmail] AS' 
END
ALTER PROCEDURE [dbo].[stlCreateMaterialReservedNotificationEmail]
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @res__ref INT,
            @art__rpn NVARCHAR(17),
            @art_oms1 NVARCHAR(250),
            @subject NVARCHAR(1000),
            @RecipientsCSV NVARCHAR(1000),
            @LastProcessedResRef INT;

    -- Get last processed res__ref
    SELECT @LastProcessedResRef = ISNULL(LastProcessedResRef, 139507)
    FROM dbo.stlEmailCheckpoint
    WHERE CheckpointName = 'MaterialReserved';

    -- Get email recipients
    SELECT @RecipientsCSV = EmailAddresses 
    FROM (
        SELECT EmailName, CAST(STUFF(
            (SELECT N', ' + EmailAddress
             FROM (SELECT EmailName, EmailAddress FROM stlEmailRecipients er
                   WHERE StartDate <= GETDATE() AND ISNULL(EndDate, '1/1/2050') >= GETDATE()) ea
             WHERE er.EmailName = ea.EmailName 
             ORDER BY EmailName 
             FOR XML PATH('')), 1, 2, '') AS NVARCHAR(4000)) EmailAddresses
        FROM stlEmailRecipients er
        GROUP BY EmailName
    ) emails
    WHERE emails.EmailName = 'Material Reserved';

    -- Cursor through new reservations
    DECLARE reservationsCursor CURSOR FOR
        SELECT r.res__ref, a.art__rpn, a.art_oms1
        FROM resgrd__ r
        JOIN artiky__ a ON r.art__ref = a.art__ref
        WHERE r.res__ref > @LastProcessedResRef
          AND (a.art__rpn LIKE '%949' OR a.art__rpn LIKE '%1385')
        ORDER BY r.res__ref;

    OPEN reservationsCursor;
    FETCH NEXT FROM reservationsCursor INTO @res__ref, @art__rpn, @art_oms1;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @subject = 'Material Reserved: ' + @art__rpn + ' (' + @art_oms1 + ') [Res Ref: ' + CAST(@res__ref AS NVARCHAR) + ']';

        INSERT INTO stlEmails ([Subject], RecipientsCSV)
        VALUES (@subject, @RecipientsCSV);

        UPDATE dbo.stlEmailCheckpoint
        SET LastProcessedResRef = @res__ref
        WHERE CheckpointName = 'MaterialReserved';

        FETCH NEXT FROM reservationsCursor INTO @res__ref, @art__rpn, @art_oms1;
    END;

    CLOSE reservationsCursor;
    DEALLOCATE reservationsCursor;
END

