SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_SpoolOperator]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_SpoolOperator
AS
SELECT     dbo.spool.spoolID, dbo.operator.usernbr_
FROM         dbo.operator INNER JOIN
                      dbo.flatRoll INNER JOIN
                      dbo.spool INNER JOIN
                      dbo.flatRollSpool ON dbo.spool.spoolID = dbo.flatRollSpool.spoolID ON dbo.flatRoll.flatRollID = dbo.flatRollSpool.flatRollID ON 
                      dbo.operator.operatorID = dbo.flatRoll.operatorID
GROUP BY dbo.spool.spoolID, dbo.operator.usernbr_
' 
