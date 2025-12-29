SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Checklist]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_Checklist
AS
SELECT     ord__ref, wp___ref, akt__ref, wn___ref, wn2__ref, datum___, datum___ AS DateFrom, datum___ AS DateTo, uur_____
FROM         dbo.hischl__
' 
