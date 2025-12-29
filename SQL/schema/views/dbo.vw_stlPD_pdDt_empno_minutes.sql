SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPD_pdDt_empno_minutes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPD_pdDt_empno_minutes
AS
SELECT        pdTm.pdDt, eno.empNo, SUM(pdTm.totalMinutes) AS minutes
FROM            dbo.stlPD_TimeSum AS pdTm INNER JOIN
                         dbo.stlPayChexXCERMID AS px ON pdTm.wn___ref = px.wn___ref INNER JOIN
                         dbo.werknm__ AS wn ON px.wn___ref = wn.wn___ref INNER JOIN
                         dbo.stlPaychexEmpNo AS eno ON px.empNo = eno.empNo
WHERE        (pdTm.wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Press''))))
GROUP BY pdTm.pdDt, eno.empNo
' 
