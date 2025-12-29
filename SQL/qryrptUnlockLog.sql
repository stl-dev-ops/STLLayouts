SELECT dbo_stlST_UnlockLog.logDt, dbo_stlST_UnlockLog.operator_wn___ref AS OpNum, [wn_naam_] & " " & [wn_vnaam] AS Operator, dbo_stlST_UnlockLog.code_wn___ref AS [Code Used], dbo_stlST_UnlockLog.ord__ref AS Job, dbo_stlST_UnlockLog.hlf__ref AS SFG, dbo_stlST_UnlockLog.sku__ref AS SKU, dbo_stlST_UnlockLog.message AS Msg
FROM dbo_stlST_UnlockLog LEFT JOIN dbo_werknm__ ON dbo_stlST_UnlockLog.operator_wn___ref = dbo_werknm__.wn___ref
ORDER BY dbo_stlST_UnlockLog.stlST_UnlockLogID DESC;

