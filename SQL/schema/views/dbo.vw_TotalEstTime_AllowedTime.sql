SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_TotalEstTime_AllowedTime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_TotalEstTime_AllowedTime AS
select off__ref, SUM(TotalTime) as TotalEstTime, CAST(CASE WHEN SUM(TotalTime) * 0.10 > 120 THEN (SUM(TotalTime) * 0.10) + SUM(TotalTime) ELSE SUM(TotalTime) + 120 END as INTEGER) as AllowedTime
from (
select off__ref, sum(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) TotalTime from v4vpak__  group by off__ref
UNION ALL
select off__ref, sum(duur____/60) TotalTime from v4etaf__ inner join stdeap__ on v4etaf__.etap_ref = stdeap__.etap_ref where v4etaf__.etap_typ = ''2''  group by off__ref
UNION ALL
select off__ref, sum(dbo.GetMinutesFromCERMTimeString(stel_tyd) + dbo.GetMinutesFromCERMTimeString(druk_tyd) + dbo.GetMinutesFromCERMTimeString(was__tyd)) TotalTime from v4eti___   group by off__ref
 ) as TotalEstTime
 group by off__ref
' 
