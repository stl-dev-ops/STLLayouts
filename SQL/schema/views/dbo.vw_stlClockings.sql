SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlClockings]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlClockings]
AS
SELECT p.datum___, p.wn___ref, p.wn___rpn, e.wp_naam_, m.akt_oms_, 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(p.starten_), CAST(p.datum___ AS datetime)) AS StartTime, 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(p.stoppen_), CAST(p.datum___ AS datetime)) AS EndTime, 
dbo.GetMinutesFromCERMTimeString(p.duur____) AS Duration, 
sc.omschr__, fc.kmnt_txt, p.kla__rpn, p.ord__ref, o.omschr__ AS Job

FROM hispnt__ AS p INNER JOIN
werkpo__ AS e ON p.wp___ref = e.wp___ref INNER JOIN
wpakt___ AS m ON p.akt__ref = m.akt__ref AND p.wp___ref = m.wp___ref INNER JOIN
order___ AS o ON p.ord__ref = o.ord__ref LEFT JOIN
kommnt__ AS fc ON p.kmnt_ref = fc.kmnt_ref LEFT JOIN
kommen__ AS sc ON p.kom__ref = sc.kom__ref
' 
