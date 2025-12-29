SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

GO

ALTER VIEW [dbo].[vw_stlDieCustomFields]
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
C93.[Value]    AS [Cut Type]

FROM stnspr__ AS D LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000003' 
) AS C3 ON D.stns_ref = C3.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000004' 
) AS C4 ON D.stns_ref = C4.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000005'
) AS C5 ON D.stns_ref = C5.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000006'
) AS C6 ON D.stns_ref = C6.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000007' 
) AS C7 ON D.stns_ref = C7.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000008'
) AS C8 ON D.stns_ref = C8.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000009' 
) AS C9 ON D.stns_ref = C9.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000010' 
) AS C10 ON D.stns_ref = C10.det__ref LEFT JOIN
(
	SELECT det__ref, antw_oms [Value]
	FROM gegant__ INNER JOIN
	gegdet__  ON gegant__.antw_ref = gegdet__.antw_ref AND gegant__.vrg__ref = gegdet__.vrg__ref 
	WHERE gegdet__.tabname_ = 'stnspr__' AND gegdet__.vrg__ref = '000011' 
) AS C11 ON D.stns_ref = C11.det__ref LEFT JOIN
(
	SELECT det__ref,
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000026'
) AS C26 ON D.stns_ref = C26.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000086'
) AS C86 ON D.stns_ref = C86.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000087'
) AS C87 ON D.stns_ref = C87.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000088'
) AS C88 ON D.stns_ref = C88.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000089'
) AS C89 ON D.stns_ref = C89.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000090'
) AS C90 ON D.stns_ref = C90.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000091'
) AS C91 ON D.stns_ref = C91.det__ref LEFT JOIN
(
	SELECT det__ref, 
	CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
	FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
	WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000092'
) AS C92 ON D.stns_ref = C92.det__ref LEFT JOIN
(
   SELECT det__ref, 
   CASE k.antw_typ WHEN 2 THEN l.antw_oms ELSE CASE k.antwtypd WHEN 1 THEN a.antw_txt WHEN 4 THEN CAST(a.antw_num AS nvarchar) END END [Value]
   FROM gegdet__ a JOIN gegvrg__ k ON a.vrg__ref = k.vrg__ref LEFT JOIN gegant__ l ON l.antw_ref = a.antw_ref AND l.vrg__ref = a.vrg__ref 
   WHERE k.tabname_ = 'stnspr__' AND k.vrg__ref = '000093'
) AS C93 ON D.stns_ref = C93.det__ref;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C11"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C10"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 119
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C9"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C8"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 119
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C7"
            Begin Extent = 
               Top = 6
               Left = 1078
               Bottom = 119
               Right = 1248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C6"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 233
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_stlDieCustomFields'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
         Begin Table = "C5"
            Begin Extent = 
               Top = 120
               Left = 454
               Bottom = 233
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C4"
            Begin Extent = 
               Top = 120
               Left = 662
               Bottom = 233
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C3"
            Begin Extent = 
               Top = 120
               Left = 870
               Bottom = 233
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_stlDieCustomFields'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_stlDieCustomFields'
GO
