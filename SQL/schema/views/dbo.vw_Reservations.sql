SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Reservations]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_Reservations as SELECT     art__ref, ord__ref, reserve_ FROM         dbo.resgrd__ WHERE     (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'') GROUP BY ord__ref, art__ref, reserve_
' 
