SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobGrossFtGoodFt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobGrossFtGoodFt
AS
SELECT     ord__ref,
                          (SELECT     SUM(aantm_in) AS Expr1
                            FROM          dbo.hlfvrd__
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__
                                                         WHERE      (kenmerk_ = ''Press'')))) AS goodft__,
                          (SELECT     SUM(totam_in) AS Expr1
                            FROM          dbo.hlfvrd__ AS hlfvrd___1
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___1
                                                         WHERE      (kenmerk_ = ''Press'')))) AS grossft_
FROM         dbo.order___
' 
