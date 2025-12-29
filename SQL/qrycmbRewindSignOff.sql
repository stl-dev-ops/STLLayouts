SELECT [wn_vnaam] & " " & [wn_naam_] AS OName, dbo_werknm__.wn___ref
FROM spoolTracePermission INNER JOIN dbo_werknm__ ON spoolTracePermission.wn___ref = dbo_werknm__.wn___ref
WHERE (((spoolTracePermission.rewindJobSignOff)=True))
ORDER BY [wn_vnaam] & " " & [wn_naam_];

