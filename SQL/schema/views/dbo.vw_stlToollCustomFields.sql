SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlToollCustomFields]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlToollCustomFields]
AS

SELECT ans.det__ref, ans.vrg__ref, que.vrg__oms, ans.antw_txt 

FROM gegdet__ ans JOIN
gegvrg__ que ON ans.tabname_ = que.tabname_ AND ans.vrg__ref = que.vrg__ref 

WHERE ans.tabname_ = ''arthlp__'' 


' 
