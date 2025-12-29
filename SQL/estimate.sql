SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstimatedCosts]
AS
SELECT     dbo.order___.ord__ref, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.omschr__, dbo.order___.oplage__, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, 
                      dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, dbo.v4eti___.klcod_fr, dbo.v4eti___.stel_tyd, dbo.v4eti___.druk_tyd, dbo.v4eti___.was__tyd, dbo.ordcum__.lonen_ok, 
                      dbo.ordcum__.machi_ok, dbo.ordcum__.overh_ok, dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.ordcum__.lev__dat, 
                      dbo.ordcum__.fak__ref, dbo.ordcum__.dok__dat, dbo.ordcum__.dat__prd, dbo.ordcum__.aant_prd, dbo.ordcum__.facafgv6, DATEPART(YYYY, dbo.ordcum__.dat__prd) 
                      AS prodyear, DATEPART(MM, dbo.ordcum__.dat__prd) AS prodmonth, DATEPART(DD, dbo.ordcum__.dat__prd) AS prodday, dbo.ordcum__.dat__prd AS ToDate, 
                      CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND 
                      vast_dat >= kstf_dat AND vast_dat >= dat__prd AND vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND 
                      kstf_dat >= dat__prd AND kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptFromDate, CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND 
                      lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND vast_dat >= kstf_dat AND vast_dat >= dat__prd AND 
                      vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND kstf_dat >= dat__prd AND 
                      kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptToDate, 'PRESS' AS Type
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref INNER JOIN
                      dbo.ordcum__ ON dbo.order___.ord__ref = dbo.ordcum__.ord__ref
WHERE     (dbo.v4eti___.prs__ref <> N'5004')
UNION ALL
SELECT     dbo.order___.ord__ref, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.omschr__, dbo.order___.oplage__, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, 
                      dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, dbo.v4eti___.klcod_fr, dbo.v4eti___.stel_tyd, dbo.v4eti___.druk_tyd, dbo.v4eti___.was__tyd, dbo.ordcum__.lonen_ok, 
                      dbo.ordcum__.machi_ok, dbo.ordcum__.overh_ok, dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.ordcum__.lev__dat, 
                      dbo.ordcum__.fak__ref, dbo.ordcum__.dok__dat, dbo.ordcum__.dat__prd, dbo.ordcum__.aant_prd, dbo.ordcum__.facafgv6, DATEPART(YYYY, dbo.ordcum__.dat__prd) 
                      AS prodyear, DATEPART(MM, dbo.ordcum__.dat__prd) AS prodmonth, DATEPART(DD, dbo.ordcum__.dat__prd) AS prodday, dbo.ordcum__.dat__prd AS ToDate, 
                      CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND 
                      vast_dat >= kstf_dat AND vast_dat >= dat__prd AND vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND 
                      kstf_dat >= dat__prd AND kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptFromDate, CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND 
                      lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND vast_dat >= kstf_dat AND vast_dat >= dat__prd AND 
                      vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND kstf_dat >= dat__prd AND 
                      kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptToDate, 'COHESIO' AS Type
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref INNER JOIN
                      dbo.ordcum__ ON dbo.order___.ord__ref = dbo.ordcum__.ord__ref
WHERE     (dbo.v4eti___.prs__ref = N'5004')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[26] 2[35] 3) )"
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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2760
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstimatedCosts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstimatedCosts'
GO
