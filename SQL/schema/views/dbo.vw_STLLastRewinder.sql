SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLLastRewinder]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLLastRewinder
AS
SELECT        ord__ref, wn___ref
FROM            dbo.hlfvrd__ AS h
WHERE        (rowid =
                             (SELECT        MAX(rowid) AS Expr1
                               FROM            dbo.hlfvrd__
                               WHERE        (ord__ref = h.ord__ref) AND (wp___ref IN
                                                             (SELECT        wp___ref
                                                               FROM            dbo.werkpo__
                                                               WHERE        (kenmerk_ = ''rewinding'')))))
' 
