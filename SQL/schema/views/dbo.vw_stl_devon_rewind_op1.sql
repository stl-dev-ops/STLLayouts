SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_rewind_op1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_rewind_op1
AS
SELECT     dbo.vw_stl_devon_rewind_op.Job, dbo.vw_stl_devon_rewind_op.EmID, dbo.vw_stl_devon_rewind_op.Total, dbo.vw_stl_devon_rewind_op.Date1, 
                      dbo.vw_stl_devon_rewind_op.Date2, dbo.vw_stl_devon_rewind_op.Feet, dbo.vw_stl_devon_timeper.wn___ref, dbo.vw_stl_devon_timeper.Machine, 
                      dbo.vw_stl_devon_timeper.TimeDate, dbo.vw_stl_devon_timeper.Job1, dbo.vw_stl_devon_timeper.Minutes, dbo.vw_stl_devon_timeper.Keyword
FROM         dbo.vw_stl_devon_rewind_op INNER JOIN
                      dbo.vw_stl_devon_timeper ON dbo.vw_stl_devon_rewind_op.Job = dbo.vw_stl_devon_timeper.Job1 AND 
                      dbo.vw_stl_devon_timeper.wn___ref = dbo.vw_stl_devon_rewind_op.EmID AND dbo.vw_stl_devon_timeper.TimeDate = dbo.vw_stl_devon_rewind_op.Date1
' 
