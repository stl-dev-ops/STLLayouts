SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PressProducedQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_PressProducedQty
AS
SELECT     ord__ref, SUM(aant__in) AS PressProducedQty
FROM         dbo.hlfvrd__
WHERE     (wp___ref IN
                          (SELECT     wp___ref
                            FROM          dbo.werkpo__
                            WHERE      (afd__ref = ''5'')))
GROUP BY ord__ref
' 
