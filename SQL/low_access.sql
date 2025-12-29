SELECT 
    t.name AS table_name,
    MAX(ius.last_user_seek)      AS last_user_seek,
    MAX(ius.last_user_scan)      AS last_user_scan,
    MAX(ius.last_user_lookup)    AS last_user_lookup,
    MAX(ius.last_user_update)    AS last_user_update,
    MAX(ius.last_system_seek)    AS last_system_seek,
    MAX(ius.last_system_scan)    AS last_system_scan,
    MAX(ius.last_system_lookup)  AS last_system_lookup,
    MAX(ius.last_system_update)  AS last_system_update
FROM 
    sys.tables t
LEFT JOIN 
    sys.indexes i ON t.object_id = i.object_id
LEFT JOIN 
    sys.dm_db_index_usage_stats ius 
    ON i.object_id = ius.object_id 
    AND i.index_id = ius.index_id
    AND ius.database_id = DB_ID()
GROUP BY 
    t.name
HAVING 
    MAX(ius.last_user_seek)      IS NULL AND
    MAX(ius.last_user_scan)      IS NULL AND
    MAX(ius.last_user_lookup)    IS NULL AND
    MAX(ius.last_user_update)    IS NULL AND
    MAX(ius.last_system_seek)    IS NULL AND
    MAX(ius.last_system_scan)    IS NULL AND
    MAX(ius.last_system_lookup)  IS NULL AND
    MAX(ius.last_system_update)  IS NULL
ORDER BY 
    t.name;
