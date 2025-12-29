-- Created by GitHub Copilot in VSCode MSSQL - review carefully before executing
USE [sqlb00]
GO

SELECT u.user_id, u.name, COUNT(t.transaction_id) AS transaction_count
FROM dbo.users u
LEFT JOIN dbo.transactions t ON u.user_id = t.user_id
GROUP BY u.user_id, u.name
ORDER BY transaction_count DESC;