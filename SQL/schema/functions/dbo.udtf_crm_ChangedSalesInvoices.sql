SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udtf_crm_ChangedSalesInvoices]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[udtf_crm_ChangedSalesInvoices] (@SearchTimeStamp DATETIME2 (3))
RETURNS @Result TABLE (dgbk_ref NVARCHAR (6),
                       bkj__ref NVARCHAR (4),
                       fak__ref NVARCHAR (6))
BEGIN
   DECLARE @DateOnly DATE
   SET @DateOnly = CONVERT (DATE, @SearchTimeStamp)
    
   INSERT INTO @Result (dgbk_ref, bkj__ref, fak__ref)
        SELECT hafgfk__.dgbk_ref, hafgfk__.bkj__ref, hafgfk__.fak__ref
          FROM his_vw__ INNER JOIN hafgfk__ ON his_vw__.jobnr___ = hafgfk__.jobnr_vw
         WHERE his_vw__.datum___ >= @DateOnly 
           AND dbo.udf_crm_EncodeDateTime2 (his_vw__.datum___, his_vw__.tijd_stp) >= @SearchTimeStamp

   RETURN
END' 
END

