CREATE VIEW dbo.[vw_stl_devon_R&D]
AS
SELECT        dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.order___.leverdat, dbo.order___.ord__ref AS Job, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, dbo.order___.omschr__, 
                         dbo.order___.kla__ref, dbo.order___.kla__rpn
FROM            dbo.ordcum__ INNER JOIN
                         dbo.order___ ON dbo.ordcum__.ord__ref = dbo.order___.ord__ref LEFT OUTER JOIN
                         dbo.kontra__ ON dbo.order___.ktrk_ref = dbo.kontra__.ktrk_ref
WHERE        (dbo.order___.kla__rpn LIKE N'%R&D%')
GROUP BY dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.order___.leverdat, dbo.order___.ord__ref, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, dbo.order___.omschr__, 
                         dbo.order___.kla__ref, dbo.order___.kla__rpn

GO

EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
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
         Begin Table = "ordcum__"
            Begin Extent = 
               Top = 25
               Left = 699
               Bottom = 133
               Right = 866
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "order___"
            Begin Extent = 
               Top = 6
               Left = 448
               Bottom = 288
               Right = 615
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "kontra__"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 205
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2610
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_stl_devon_R&D';


GO

EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_stl_devon_R&D';


GO

