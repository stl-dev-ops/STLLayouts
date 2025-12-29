USE [sqlb00];
GO

SELECT
    gh.Title,
    LEFT(gh.Body, 100) AS Comment,
    gh.CreatedAt,
    gh.UpdatedAt,
    gh.Project_Start_Date,
    gh.Project_Due_Date,
    gh.Project_Est_Min__hrs_,
    gh.Project_Est_Max__hrs_,
    gh.Project_Actual__hrs_,
	gh.State
FROM stl_GitHubIssues AS gh
WHERE
    gh.AssigneesList LIKE '%gschull%'
    AND (
        gh.CreatedAt >= DATEADD(DAY, -7, GETDATE())
        OR gh.UpdatedAt >= DATEADD(DAY, -7, GETDATE())
        OR gh.Project_Start_Date >= DATEADD(DAY, -7, GETDATE())
        OR gh.Project_Due_Date >= DATEADD(DAY, -7, GETDATE())
    )
ORDER BY
    COALESCE(gh.UpdatedAt, gh.CreatedAt, gh.Project_Start_Date, gh.Project_Due_Date) DESC;
