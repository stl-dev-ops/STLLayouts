SELECT 
    id,
    title,
    estimatedTime,
    CAST(startDate AS DATETIME) AS startDate,
    CAST(completedAt AS DATETIME) AS completedAt,
    *

FROM dbo.stl_MaintainX_WorkOrders

WHERE status = 'DONE' 
    AND startDate IS NOT NULL 
    AND completedAt IS NOT NULL