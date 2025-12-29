WITH AlternateFacesheet AS (
	SELECT antw_txt
    FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000091' AND a.det__ref = '102679'
),
AlternateLiner AS (
	SELECT antw_txt 
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000092' AND a.det__ref = '102679'
)

SELECT * FROM AlternateFacesheet
UNION ALL
SELECT * FROM AlternateLiner