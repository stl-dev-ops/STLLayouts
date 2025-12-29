SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udtf_crm_ChangedSalesOrders]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[udtf_crm_ChangedSalesOrders] (@SearchTimeStamp DATETIME2 (3))
RETURNS @Result TABLE (lyn__ref NVARCHAR (10))
BEGIN
    
   INSERT INTO @Result (lyn__ref)
        SELECT bstlyn__.lyn__ref 
		  FROM bstlyn__       
         WHERE bstlyn__.last_edit_time >= @SearchTimeStamp 
		UNION
		SELECT bstlyn__.lyn__ref 
		  FROM bstlyn__
          LEFT JOIN bstvfl__  ON bstlyn__.bst__ref = bstvfl__.bst__ref  and bstlyn__.lyn__ref = bstvfl__.lyn__ref 		    
         WHERE bstvfl__.last_edit_time >= @SearchTimeStamp 
        UNION
		SELECT bstlyn__.lyn__ref 
		  FROM bstlyn__
          LEFT JOIN bstvfl__  ON bstlyn__.bst__ref = bstvfl__.bst__ref  and  bstvfl__.lyn__ref = ''''
         WHERE bstvfl__.last_edit_time >= @SearchTimeStamp        

  RETURN
END

' 
END

