SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_pressassistent]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_pressassistent
AS
SELECT     ord__ref, ord__rpn, kla__ref, kla__rpn, omschr__, oplage__, dat_open AS fromopen, dat_open AS toopen, open____
FROM         dbo.order___
' 
