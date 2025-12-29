SET NOCOUNT ON;
SELECT TOP 1 CONVERT(varchar(max), qp.query_plan) AS query_plan
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) st
CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle) qp
WHERE st.text LIKE '%stlST_PressRollXstlST_RewindBrick%'
ORDER BY qs.last_execution_time DESC;
