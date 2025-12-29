SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRedstoneUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlRedstoneUpdate] AS' 
END

ALTER PROCEDURE [dbo].[stlRedstoneUpdate]
    @PackingListRef NVARCHAR(10),
    @Carrier NVARCHAR(10),
    @TrackingNumber NVARCHAR(50),
    @TotalCost FLOAT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @lyn__ref NVARCHAR(10);
    DECLARE @trsp_ref NVARCHAR(6) = '';  -- Default to empty to handle NULLs more cleanly
    DECLARE @bstext__Count INT;
    DECLARE @trnlyn__Count INT;
    DECLARE @isFirstLoop BIT = 1;  -- Flag to track the first iteration

	    -- Variables to hold split parts of the TrackingNumber
    DECLARE @TrackingPrefix NVARCHAR(10);
    DECLARE @TrackingSuffix NVARCHAR(40);


    BEGIN TRANSACTION;

    BEGIN TRY
        -- Log entry
        INSERT INTO stlRedstoneUpdateLog (PackingListRef, Carrier, TrackingNumber, TotalCost)
        VALUES (@PackingListRef, @Carrier, @TrackingNumber, @TotalCost);

        -- Retrieve `trsp_ref` for the carrier, or default to an empty string if not found
        SET @trsp_ref = (SELECT COALESCE(lev__ref, '') FROM levbas__ WHERE lev__rpn = @Carrier);

        -- Declare the cursor to iterate over each `lyn__ref` associated with `PackingListRef`
        DECLARE lynRefCursor CURSOR FOR
        SELECT lyn__ref
        FROM bstlyn__
        WHERE lbn__ref = @PackingListRef;

        -- Open the cursor and fetch the first row
        OPEN lynRefCursor;
        FETCH NEXT FROM lynRefCursor INTO @lyn__ref;

        -- Loop through each `lyn__ref` in bstlyn__ where `lbn__ref` matches `@PackingListRef`
        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Split the TrackingNumber into prefix and suffix
            SET @TrackingPrefix = LEFT(@TrackingNumber, CHARINDEX(' - ', @TrackingNumber) - 1);
            SET @TrackingSuffix = SUBSTRING(@TrackingNumber, CHARINDEX(' - ', @TrackingNumber) + 3, LEN(@TrackingNumber));

            -- Check if `bstext__` record exists for this `lyn__ref`
            SET @bstext__Count = (SELECT COUNT(1) FROM bstext__ WHERE lyn__ref = @lyn__ref);

            --IF @bstext__Count = 0
            --BEGIN
            --    -- Insert new record if it does not exist
            --    INSERT INTO bstext__ (lyn__ref, tekst_02, tekst_04)
            --    VALUES (@lyn__ref, @TrackingNumber, @Carrier);
            --END
            --ELSE
            --BEGIN
            --    -- Update existing record
            --    UPDATE bstext__
            --    SET tekst_02 = @TrackingNumber, tekst_04 = @Carrier
            --    WHERE lyn__ref = @lyn__ref;
            --END


            IF @bstext__Count = 0
            BEGIN
                -- Insert new record if it does not exist
                INSERT INTO bstext__ (lyn__ref, tekst_02, tekst_04, tekst_05)
                VALUES (@lyn__ref, @TrackingSuffix, @Carrier, @TrackingPrefix);
            END
            ELSE
            BEGIN
                -- Update existing record
                UPDATE bstext__
                SET tekst_02 = @TrackingSuffix, 
                    tekst_04 = @Carrier, 
                    tekst_05 = @TrackingPrefix
                WHERE lyn__ref = @lyn__ref;
            END


            -- Update `trnlyn__` only on the first iteration
            IF @isFirstLoop = 1
            BEGIN
                -- Check if `trnlyn__` record exists for this `lyn__ref`
                SET @trnlyn__Count = (SELECT COUNT(1) FROM trnlyn__ WHERE lyn__ref = @lyn__ref);

                IF @trnlyn__Count = 0
                BEGIN
                    -- Insert new record if none exist
                    INSERT INTO trnlyn__ (lyn__ref, trackurl, ord__kst, trsp_ref, trsp_rpn)
                    VALUES (@lyn__ref, @TrackingNumber, @TotalCost, @trsp_ref, @Carrier);
                END
                ELSE
                BEGIN
                    -- Update existing record
                    UPDATE trnlyn__
                    SET trackurl = @TrackingNumber,
                        vrztotbm = @TotalCost,
                        vrztotvm = @TotalCost,
                        trsp_ref = @trsp_ref,
                        trsp_rpn = @Carrier
                    WHERE lyn__ref = @lyn__ref;
                END

                -- Set the flag to indicate that the first iteration is complete
                SET @isFirstLoop = 0;
            END

            -- Fetch the next row
            FETCH NEXT FROM lynRefCursor INTO @lyn__ref;
        END

        -- Close and deallocate the cursor
        CLOSE lynRefCursor;
        DEALLOCATE lynRefCursor;

        -- Commit the transaction
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Error handling
        SELECT  
            ERROR_NUMBER() AS ErrorNumber,  
            ERROR_SEVERITY() AS ErrorSeverity,  
            ERROR_STATE() AS ErrorState,  
            ERROR_PROCEDURE() AS ErrorProcedure,  
            ERROR_LINE() AS ErrorLine,  
            ERROR_MESSAGE() AS ErrorMessage;

        -- Rollback transaction if an error occurs
        IF @@TRANCOUNT > 0  
            ROLLBACK TRANSACTION;

        -- Close and deallocate cursor in case of error
        IF CURSOR_STATUS('global', 'lynRefCursor') >= -1
        BEGIN
            CLOSE lynRefCursor;
            DEALLOCATE lynRefCursor;
        END

        RETURN -1;  -- Return a failure code if an error occurs
    END CATCH;

    RETURN 0; -- Indicate success
END;

