SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_dieusage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_dieusage
AS
SELECT     dbo.hlpreg__.arth_ref, dbo.hlpreg__.arthdref, dbo.hlpreg__.toestand, dbo.hlpreg__.dat__beg AS DateFrom, dbo.hlpreg__.aantal__, dbo.hlpreg__.ord__ref, 
                      dbo.hlpreg__.wp___ref, dbo.werkpo__.wp_naam_, dbo.werknm__.wn_vnaam + '' '' + dbo.werknm__.wn_naam_ AS Employee, dbo.hlpreg__.dat__beg AS DateTo, 
                      dbo.stnspr__.stns_rpn
FROM         dbo.hlpreg__ INNER JOIN
                      dbo.stnspr__ ON dbo.hlpreg__.arth_ref = dbo.stnspr__.stns_ref LEFT OUTER JOIN
                      dbo.werkpo__ ON dbo.hlpreg__.wp___ref = dbo.werkpo__.wp___ref LEFT OUTER JOIN
                      dbo.werknm__ ON dbo.hlpreg__.wn___ref = dbo.werknm__.wn___ref
' 
