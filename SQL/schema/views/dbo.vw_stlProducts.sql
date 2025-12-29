SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProducts]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlProducts]
AS
SELECT p.afg__ref AS [Product ID], p.afg__rpn AS [Product keyword], p.afg_oms1 AS [Product description 1], p.afg_oms2 AS [Product description 2], p.afg_orig AS [Previous product], 
p.aant__e2 AS [Quantity (Unit 1)], ISNULL(vpakwy__.eenh1int, N'''') AS [Description (Unit 1)], 
p.aant__e3 AS [Quantity (Unit 2)], ISNULL(vpakwy__.eenh2int, N'''') AS [Description (Unit 2)], 
p.aant__e4 AS [Quantity (Unit 3)], ISNULL(vpakwy__.eenh3int, N'''') AS [Description (Unit 3)], 
p.aant__e5 AS [Quantity (Unit 4)], ISNULL(vpakwy__.eenh4int, N'''') AS [Description (Unit 4)], 
p.aant_rol AS [Quantity/roll], p.aantdoos AS [Quantity/box], p.aanteenh AS [Quantity/unit], 
p.aanteti1 AS [No. of labels (Unit 1)], p.aanteti2 AS [No. of labels (Unit 2)], p.aanteti3 AS [No. of labels (Unit 3)], p.aanteti4 AS [No. of labels (Unit 4)], p.aanteti5 AS [No. of labels (Unit 5)], 
p.art__ref AS MaterialID, 
ISNULL(m.art__rpn, N'''') AS MaterialKeyword, ISNULL(m.art_oms1, N'''') AS MaterialDescription1, ISNULL(m.art_oms2, N'''') AS MaterialDescription2, 
p.art_ref1 AS MaterialID1, ISNULL(m1.art__rpn, N'''') AS MaterialKeyword1, ISNULL(m1.art_oms1, N'''') AS Material1Description1, ISNULL(m1.art_oms2, N'''') AS Material1Description2, 
p.art_ref2 AS MaterialID2, ISNULL(m2.art__rpn, N'''') AS MaterialKeyword2, ISNULL(m2.art_oms1, N'''') AS Material2Description1, ISNULL(m2.art_oms2, N'''') AS Material2Description2, 
p.art_ref3 AS MaterialID3, ISNULL(m3.art__rpn, N'''') AS MaterialKeyword3, ISNULL(m3.art_oms1, N'''') AS Material3Description1, ISNULL(m3.art_oms2, N'''') AS Material3Description2, 
p.art_ref4 AS MaterialID4, ISNULL(m4.art__rpn, N'''') AS MaterialKeyword4, ISNULL(m4.art_oms1, N'''') AS Material4Description1, ISNULL(m4.art_oms2, N'''') AS Material4Description2, 
p.art_ref5 AS MaterialID5, ISNULL(m5.art__rpn, N'''') AS MaterialKeyword5, ISNULL(m5.art_oms1, N'''') AS Material5Description1, ISNULL(m5.art_oms2, N'''') AS Material5Description2, 
p.dat_crea AS [Creation date], p.dat_uitg AS [Exhaustion date], p.diamt_mx AS Diameter, p.dikteafg AS [Micro-metrical thickness (Product)], p.diktekrn AS [Core thickness], 
p.drg__ref AS Substrate, ISNULL(drgers__.drg__rpn, N'''') AS SubstrateKeyword, ISNULL(drgers__.drg__oms, N'''') AS SubstrateDescription, 
CASE 
  WHEN p.eti_vorm = 1 THEN ''Rectangle'' 
  WHEN p.eti_vorm = 2 THEN ''Circle'' 
  WHEN p.eti_vorm = 3 THEN ''Irregular'' 
  WHEN p.eti_vorm = 4 THEN ''Oval''
ELSE 
  ''Unknown'' 
END AS Shape,
 p.etiket_b AS Width, p.etiket_h AS Height, p.kern____ AS Core, p.kla__ref AS [Customer ID], p.kla__rpn AS [Customer keyword], 
 p.klcod_fr AS [Colour code front], p.klcod_lm AS [Adhesive colour code], p.klcod_rg AS [Colour code backing], p.kpn__ref AS [Press sheet ID], p.kpnafw_1 AS [Number / perforate (Y/N)], 
 p.kpnafw_2 AS [Varnish (Y/N)], p.kpnafw_3 AS [Laminating (Y/N)], p.kpnafw_4 AS [Crease / die (Y/N)], p.kpnafw_6 AS [Other finishing (Y/N)], p.kpnafw_7 AS [Cutting (Y/N)], 
 p.kpnafw_8 AS [Output (Y/N)], p.kpnafw_9 AS [Foil printing (Y/N)], p.lblgp___ AS [Exact labelgap of the calculation], p.lblgp_mn AS [Min. label gap], p.lblgp_mx AS [Max. label gap], 
 p.m2__1000 AS Surface, p.nto_1000 AS [Net weight / 1.000 units], p.off__ref AS [Standard calculation ID], p.off1_ref AS [Reference calculation ID], 
p.oms__pak AS [Pack description], p.oms_aant AS [Description quantity (01)], p.oms_aan2 AS [Description quantity (02)], p.oms_aan3 AS [Description quantity (03)], 
CASE 
  WHEN p.pap__srt = ''0'' THEN ''Paper sheet'' 
  WHEN p.pap__srt = ''1'' THEN ''Other sheets substrate'' 
  WHEN p.pap__srt = ''2'' THEN ''Paper reels'' 
  WHEN p.pap__srt = ''3'' THEN ''Plate'' 
  WHEN p.pap__srt = ''4'' THEN ''Film'' 
  WHEN p.pap__srt = ''5'' THEN ''Other web substrate'' 
  WHEN p.pap__srt = ''6'' THEN ''Ink'' 
  WHEN p.pap__srt = ''7'' THEN ''Other material'' 
  WHEN p.pap__srt = ''8'' THEN ''Montage sheet'' 
  WHEN p.pap__srt = ''9'' THEN ''Box'' 
  WHEN p.pap__srt = ''a'' THEN ''Core'' 
ELSE 
  p.pap__srt 
END AS [Material type], 
p.per__chk AS [Order per amount], p.per__web AS [Order per X pieces], p.prfm_ref AS [Quality group ID], ISNULL(prodfm__.prfm_rpn, N'''') AS [Quality group], 
p.prkl_ref AS [Product group ID], ISNULL(prodkl__.omschr__, N'''') AS [Product group], p.radius__ AS Radius, p.rol____b AS [Roll width], 
p.uitgeput AS [End-of-life], p.user____ AS [Created by], p.vpak_ref AS [Packing procedure ID], p.vrm__ref AS [Carton die], p.vrrd_art AS [Stock product (Y/N)], p.wij__dat AS [Latest change date], 
p.wij__usr AS [User latest modif.], p.wikk____ AS Winding, p.zynrefkl AS [Ref. at customer], pq.in__vrrd - pq.in___qrt AS InStock, 
pq.te_lever * - 1 AS ToDeliver, pq.in_produ AS InProduction, (pq.in__vrrd - pq.in___qrt) + pq.te_lever * - 1 AS Available, pq.in_best_ AS Purchase, p.off1_ref [Estimate ID]

FROM afgart__ AS p LEFT JOIN
drgers__ ON p.drg__ref = drgers__.drg__ref LEFT JOIN
artiky__ AS m1 ON p.art_ref1 = m1.art__ref LEFT JOIN
artiky__ AS m2 ON p.art_ref2 = m2.art__ref LEFT JOIN
artiky__ AS m3 ON p.art_ref3 = m3.art__ref LEFT JOIN
artiky__ AS m4 ON p.art_ref4 = m4.art__ref LEFT JOIN
artiky__ AS m5 ON p.art_ref5 = m5.art__ref LEFT JOIN
artiky__ AS m ON p.art__ref = m.art__ref LEFT JOIN
vpakwy__ RIGHT JOIN
vpakpr__ ON vpakwy__.vpk__ref = vpakpr__.vpk__ref ON p.vpak_ref = vpakpr__.vpak_ref LEFT JOIN
prodfm__ ON p.prfm_ref = prodfm__.prfm_ref LEFT JOIN
prodkl__ ON p.prkl_ref = prodkl__.prkl_ref LEFT JOIN
afgant__ AS pq ON p.afg__ref = pq.afg__ref
' 
