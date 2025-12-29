SELECT 
    t.name AS table_name,
    p.rows AS row_count
FROM 
    sys.tables t
JOIN 
    sys.partitions p ON t.object_id = p.object_id
WHERE 
    p.index_id IN (0,1) -- heap or clustered index
GROUP BY 
    t.name, p.rows
HAVING 
    SUM(p.rows) = 0
ORDER BY 
    t.name;
