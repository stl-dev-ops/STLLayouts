    SELECT
        h.wp___ref AS MachineID,
        wpakt.akt_oms_ AS MaintenanceActivity,
        SUM(
            DATEDIFF(MINUTE,
                -- Handle >24 hour start time
                CASE 
                    WHEN CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.starten_, CHARINDEX(':', h.starten_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_, 120)
                END,
                -- Handle >24 hour stop time
                CASE 
                    WHEN CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.stoppen_, CHARINDEX(':', h.stoppen_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_, 120)
                END
            )
        ) AS MaintenanceMinutes
    FROM dbo.hispnt__ AS h
    LEFT JOIN dbo.wpakt___ AS wpakt
        ON h.wp___ref = wpakt.wp___ref 
        AND h.akt__ref = wpakt.akt__ref
    WHERE wpakt.akt_oms_ LIKE '%Maintenance%'
      AND h.datum___ >= '2025-07-01' AND h.datum___ < '2025-08-01'
      AND h.starten_ IS NOT NULL AND h.starten_ <> ''
      AND h.stoppen_ IS NOT NULL AND h.stoppen_ <> ''
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_) = 1
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_) = 1
    GROUP BY h.wp___ref, wpakt.akt_oms_
