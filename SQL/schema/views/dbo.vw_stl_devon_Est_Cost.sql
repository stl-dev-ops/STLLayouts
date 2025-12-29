SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_Est_Cost]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_Est_Cost
AS
SELECT     dbo.v4kkst__.off__ref, SUM(dbo.v4kkst__.papier__ + dbo.v4kkst__.grdvb___) AS COGs, SUM(dbo.bstlyn__.bedr__bm) AS Amount, MIN(dbo.bstlyn__.vrzv_dat) 
                      AS ExpectDate, dbo.bstlyn__.kla__rpn AS Customer, dbo.bstlyn__.afg_oms1 AS Description, 
                      CASE WHEN dbo.bstlyn__.trn__srt = ''0'' THEN ''Stock Job'' ELSE ''Production'' END AS JobType
FROM         dbo.v4kkst__ INNER JOIN
                      dbo.bstlyn__ ON dbo.v4kkst__.off__ref = dbo.bstlyn__.ord__ref
WHERE     (dbo.v4kkst__.kst__srt = ''0'')
GROUP BY dbo.v4kkst__.off__ref, dbo.bstlyn__.kla__rpn, dbo.bstlyn__.afg_oms1, dbo.bstlyn__.trn__srt
' 
