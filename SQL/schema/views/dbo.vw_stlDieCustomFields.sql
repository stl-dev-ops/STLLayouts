SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlDieCustomFields]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlDieCustomFields]
AS

SELECT D.stns_ref, 
C26.[Value]    AS [Press],
C5.[Value]     AS [Gap Sz Btwn Cavitiy], 
C6.[Value]     AS [Single Cavity Width], 
C86.[Value]    AS [Bar Length],
C87.[Value]    AS [Shaft Diameter],
C88.[Value]    AS [End Gap],
C3.[Value]     AS [Stagger Measurement],
C4.[Value]     AS [Cavities Per Lane], 
C7.[Value]     AS [TPI], 
C8.[Value]     AS [Leader], 
C9.[Value]     AS [Unwind Position], 
C10.[Value]    AS [Tie Size], 
C11.[Value]    AS [Tie Spacing], 
C89.[Value]    AS [Cuts], 
C90.[Value]    AS [Voids],
C91.[Value]    AS [Alternate Facesheet],
C92.[Value]    AS [Alternate Liner],
C93.[Value]    AS [Cut Type],
C94.[Value]    AS [Position],
C95.[Value]    AS [Treatment],
C96.[Value]    AS [Coating],
C97.[Value]    AS [Cutting Angle],
C98.[Value]    AS [Blade Height],
C99.[Value]    AS [Label Application],
C100.[Value]   AS [Plate Width]

FROM stnspr__ AS D LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000003'' 
) AS C3 ON D.stns_ref = C3.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000004'' 
) AS C4 ON D.stns_ref = C4.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000005''
) AS C5 ON D.stns_ref = C5.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000006''
) AS C6 ON D.stns_ref = C6.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000007'' 
) AS C7 ON D.stns_ref = C7.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000008''
) AS C8 ON D.stns_ref = C8.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000009'' 
) AS C9 ON D.stns_ref = C9.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000010'' 
) AS C10 ON D.stns_ref = C10.det__ref LEFT JOIN
(
	SELECT det__ref, antw_oms [Value]
	FROM gegant__ INNER JOIN
	gegdet__  ON gegant__.antw_ref = gegdet__.antw_ref AND gegant__.vrg__ref = gegdet__.vrg__ref 
	WHERE gegdet__.tabname_ = ''stnspr__'' AND gegdet__.vrg__ref = ''000011'' 
) AS C11 ON D.stns_ref = C11.det__ref LEFT JOIN
(
	SELECT det__ref,
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000026''
) AS C26 ON D.stns_ref = C26.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000086''
) AS C86 ON D.stns_ref = C86.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000087''
) AS C87 ON D.stns_ref = C87.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000088''
) AS C88 ON D.stns_ref = C88.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000089''
) AS C89 ON D.stns_ref = C89.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000090''
) AS C90 ON D.stns_ref = C90.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000091''
) AS C91 ON D.stns_ref = C91.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000092''
) AS C92 ON D.stns_ref = C92.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000093''
) AS C93 ON D.stns_ref = C93.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000094''
) AS C94 ON D.stns_ref = C94.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000095''
) AS C95 ON D.stns_ref = C95.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000096''
) AS C96 ON D.stns_ref = C96.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000097''
) AS C97 ON D.stns_ref = C97.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000098''
) AS C98 ON D.stns_ref = C98.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000099''
) AS C99 ON D.stns_ref = C99.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = ''stnspr__'' AND k.vrg__ref = ''000100''
) AS C100 ON D.stns_ref = C100.det__ref
' 
