SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlWorkers]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlWorkers]
AS
SELECT wn___ref, Name + '' ('' + wn___ref + '')'' AS UserName
FROM 
	(
		SELECT wn___ref, TRIM(wn_vnaam) + CASE WHEN LEN(TRIM(wn_vnaam)) <> 0 AND LEN(TRIM(wn_naam_)) <> 0 THEN '' '' ELSE '''' END + TRIM(wn_naam_) AS Name
		FROM werknm__
	) AS E

' 
