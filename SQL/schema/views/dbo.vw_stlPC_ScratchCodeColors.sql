SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPC_ScratchCodeColors]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPC_ScratchCodeColors
AS
SELECT        TOP (100) PERCENT dbo.stlPC_ScratchCode.stlPC_ScratchCodeID, dbo.stlPC_ScratchCodeColor.station, dbo.stlPC_ScratchCodeColor.ink__ref, dbo.inkklr__.ink__oms, CASE WHEN aniloxFrom = aniloxTo AND 
                         aniloxFrom > 0 THEN CAST(aniloxFrom AS varchar) WHEN aniloxFrom = 0 THEN '''' ELSE CAST(aniloxFrom AS varchar) + '' - '' + CAST(aniloxTo AS varchar) END AS AniloxRange, CASE WHEN BCMFrom = BCMTo AND 
                         BCMFrom > 0 THEN CAST(BCMFrom AS varchar) WHEN BCMFrom = 0 THEN '''' ELSE CAST(BCMFrom AS varchar) + '' - '' + CAST(BCMTo AS varchar) END AS BCMRange, dbo.stlPC_ScratchCodeColor.platePR, 
                         dbo.stlPC_ScratchCodeColor.note, dbo.stlPC_ScratchCodeColor.aniloxFrom, dbo.stlPC_ScratchCodeColor.aniloxTo, dbo.stlPC_ScratchCodeColor.BCMFrom, dbo.stlPC_ScratchCodeColor.BCMTo
FROM            dbo.stlPC_ScratchCodeColor INNER JOIN
                         dbo.stlPC_ScratchCode ON dbo.stlPC_ScratchCodeColor.stlPC_ScratchCodeID = dbo.stlPC_ScratchCode.stlPC_ScratchCodeID LEFT OUTER JOIN
                         dbo.inkklr__ ON dbo.stlPC_ScratchCodeColor.ink__ref = dbo.inkklr__.ink__ref
ORDER BY dbo.stlPC_ScratchCodeColor.station
' 
