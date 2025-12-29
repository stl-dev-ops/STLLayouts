SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPD_pdDt_empNo_GoodFeet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPD_pdDt_empNo_GoodFeet
AS
SELECT        TOP (100) PERCENT pdFt.pdDt AS StartDt, pdFt.pdDt AS EndDt, eno.empNo, SUM(pdFt.goodFt) AS GoodFeet, 1 AS WorkedThisDate
FROM            dbo.stlPD_FtSum AS pdFt INNER JOIN
                         dbo.stlPayChexXCERMID AS px ON pdFt.wn___ref = px.wn___ref INNER JOIN
                         dbo.werknm__ AS wn ON px.wn___ref = wn.wn___ref INNER JOIN
                         dbo.stlPaychexEmpNo AS eno ON px.empNo = eno.empNo
WHERE        (pdFt.wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Press''))))
GROUP BY pdFt.pdDt, eno.empNo
' 
