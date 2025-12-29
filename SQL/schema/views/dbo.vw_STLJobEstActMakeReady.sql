SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLJobEstActMakeReady]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLJobEstActMakeReady
AS
SELECT        ord__ref, jobEstMakeReadyMin, jobActMakeReadyMin
FROM            dbo.incente_
WHERE        (department = ''Press'')
GROUP BY ord__ref, jobEstMakeReadyMin, jobActMakeReadyMin
' 
