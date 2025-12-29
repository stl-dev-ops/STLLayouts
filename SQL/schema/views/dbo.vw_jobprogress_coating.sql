SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_jobprogress_coating]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_jobprogress_coating
AS
SELECT     ord__ref, omschr__, kla__rpn, oplage__,
                          (SELECT     MIN(datefrom) AS Expr1
                            FROM          dbo.vw_all_clockings
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__
                                                         WHERE      (kenmerk_ = ''Coating'')))) AS datefrom,
                          (SELECT     MIN(datefrom) AS Expr1
                            FROM          dbo.vw_all_clockings AS vw_all_clockings_1
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___1
                                                         WHERE      (kenmerk_ = ''Coating'')))) AS dateto
FROM         dbo.order___
' 
