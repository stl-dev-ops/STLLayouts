SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlCoatingJobs]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlCoatingJobs
AS
SELECT        ord__ref, kla__rpn, Job_Desc, PO_Supplier_Ref, Prod_Ref_at_Supplier, Material, First_Scheduled_Date, Last_Scheduled_Date, PO_Expected_Ship_Date, SO_Expected_Ship_Date, Facesheet_ID, Facesheet, Facesheet_Stock, 
                         Facesheet_Stock_On_Start_Date, Facesheet_Needed, LINER_ID, Liner, Liner_Stock, Liner_Stock_On_Start_Date, Liner_Needed, ADH_ID, ADH_Stock, ADH_Stock_On_Start_Date, ADH_Needed, 
                         CASE WHEN Facesheet_Needed <= Facesheet_Stock_On_Start_Date THEN ''OK'' ELSE ''SHORTAGE'' END AS Facesheet_Status, 
                         CASE WHEN ADH_Needed <= ADH_Stock_On_Start_Date THEN ''OK'' ELSE ''SHORTAGE'' END AS ADH_Status, CASE WHEN Liner_Needed <= Liner_Stock_On_Start_Date THEN ''OK'' ELSE ''SHORTAGE'' END AS Liner_Status, 
                         CASE WHEN Facesheet_Needed <= Facesheet_Stock_On_Start_Date THEN '''' ELSE ''Facesheet; '' END + CASE WHEN ADH_Needed <= ADH_Stock_On_Start_Date THEN '''' ELSE ''Adhesive; '' END + CASE WHEN Liner_Needed <= Liner_Stock_On_Start_Date
                          THEN '''' ELSE ''Liner;'' END AS Material_Shortages, ADH, afg__ref, lyn__ref, grbonref
FROM            (SELECT DISTINCT TOP (100) PERCENT O.ord__ref, O.kla__rpn, O.omschr__ AS Job_Desc, PO.zyn__ref AS PO_Supplier_Ref, p.zynrefkl AS Prod_Ref_at_Supplier, CASE WHEN PO.zyn__ref = P.zynrefkl THEN ISNULL
                                                        ((SELECT DISTINCT zyn__ref
                                                            FROM            artiky__
                                                            WHERE        zyn__ref = PO.zyn__ref), ''*** ERROR CHECK SUPPLIER REFs ***'') ELSE ''*** ERROR CHECK SUPPLIER REFs ***'' END AS Material, sch.MinStartDate AS First_Scheduled_Date, 
                                                    sch.MaxEndDate AS Last_Scheduled_Date, PO.glev_dat AS PO_Expected_Ship_Date, SO.levv_dat AS SO_Expected_Ship_Date, JM.FACESHEET_ID AS Facesheet_ID, FS.art__rpn AS Facesheet, 
                                                    ISNULL(FC_SKU_Stock.Stock, 0) AS Facesheet_Stock, dbo.Material_Quantity_As_Of(JM.FACESHEET_ID, DATEADD(DAY, - 1, sch.MinStartDate)) AS Facesheet_Stock_On_Start_Date,
                                                        (SELECT        MAX(tedrkdto) AS Expr1
                                                          FROM            dbo.v4eti___
                                                          WHERE        (off__ref = O.ord__ref) AND (art__ref = JM.FACESHEET_ID)) AS Facesheet_Needed, JM.LINER_ID, L.art__rpn AS Liner, ISNULL(L_SKU_Stock.Stock, 0) AS Liner_Stock, 
                                                    dbo.Material_Quantity_As_Of(JM.LINER_ID, DATEADD(DAY, - 1, sch.MinStartDate)) AS Liner_Stock_On_Start_Date, ISNULL
                                                        ((SELECT        MAX(vrbpap__) AS Expr1
                                                            FROM            dbo.v4etaf__
                                                            WHERE        (off__ref = O.ord__ref) AND (art__ref = JM.LINER_ID)), 0) AS Liner_Needed, JM.ADH_ID, ISNULL(ADH_Stock.Stock, 0) AS ADH_Stock, dbo.Material_Quantity_As_Of(JM.ADH_ID, DATEADD(DAY, - 1, 
                                                    sch.MinStartDate)) AS ADH_Stock_On_Start_Date, ISNULL(INK_Reservations.reserve_, 0) AS ADH_Needed, A.art__rpn AS ADH, p.afg__ref, SO.lyn__ref, PO.grbonref
                          FROM            dbo.artiky__ AS L RIGHT OUTER JOIN
                                                        (SELECT        TOP (100) PERCENT art__ref, SUM(in_stock - in___qrt) AS Stock
                                                          FROM            dbo.artikd__ AS artikd___1
                                                          GROUP BY art__ref) AS L_SKU_Stock RIGHT OUTER JOIN
                                                    dbo.artiky__ AS FS RIGHT OUTER JOIN
                                                    dbo.afgart__ AS p RIGHT OUTER JOIN
                                                    dbo.bstlyn__ AS SO ON p.afg__ref = SO.afg__ref RIGHT OUTER JOIN
                                                    dbo.grsbon__ AS PO RIGHT OUTER JOIN
                                                    dbo.artiky__ AS A RIGHT OUTER JOIN
                                                    dbo.vw_stlJobMaterial AS JM ON A.art__ref = JM.ADH_ID LEFT OUTER JOIN
                                                    dbo.resgrd__ AS INK_Reservations ON JM.ord__ref = INK_Reservations.ord__ref AND JM.ADH_ID = INK_Reservations.art__ref LEFT OUTER JOIN
                                                        (SELECT        TOP (100) PERCENT art__ref, SUM(in_stock - in___qrt) AS Stock
                                                          FROM            dbo.artikd__
                                                          GROUP BY art__ref) AS ADH_Stock ON JM.ADH_ID = ADH_Stock.art__ref RIGHT OUTER JOIN
                                                        (SELECT        ord__ref, plpl_ref, MIN(datum___) AS MinStartDate, MAX(datumend) AS MaxEndDate
                                                          FROM            dbo.plandv__ AS S
                                                          WHERE        (plpl_ref = ''COATING'')
                                                          GROUP BY ord__ref, plpl_ref) AS sch LEFT OUTER JOIN
                                                    dbo.order___ AS O ON sch.ord__ref = O.ord__ref ON JM.ord__ref = O.ord__ref ON PO.ord__ref = O.ord__ref ON SO.ord__ref = O.ord__ref LEFT OUTER JOIN
                                                        (SELECT        TOP (100) PERCENT art__ref, SUM(in_stock - in___qrt) AS Stock
                                                          FROM            dbo.artikd__ AS artikd___1
                                                          GROUP BY art__ref) AS FC_SKU_Stock ON JM.FACESHEET_ID = FC_SKU_Stock.art__ref ON FS.art__ref = JM.FACESHEET_ID ON L_SKU_Stock.art__ref = JM.LINER_ID ON L.art__ref = JM.LINER_ID
                          WHERE        (SO.vrz__tst < N''Y'') AND (PO.zyn__ref IS NOT NULL)) AS T
' 
