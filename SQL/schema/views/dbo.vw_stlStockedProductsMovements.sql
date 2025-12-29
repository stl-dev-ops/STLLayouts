SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlStockedProductsMovements]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlStockedProductsMovements]
AS
SELECT 
CASE soort___ 
	WHEN ''0'' THEN ''Unknown'' 
	WHEN ''1'' THEN ''Production stock'' 
	WHEN ''2'' THEN ''Shipment'' 
	WHEN ''3'' THEN ''Initial stock'' 
	WHEN ''4'' THEN ''Stock change''
	WHEN ''5'' THEN ''Consumption semi-finished goods'' 
	WHEN ''6'' THEN ''Semi-finished goods consumption correction'' 
	WHEN ''7'' THEN ''Balance correction'' 
	WHEN ''8'' THEN ''Purchase stock'' 
	WHEN ''9'' THEN ''Delete SKU'' 
	WHEN ''11'' THEN ''Delete quarantine'' 
	WHEN ''12'' THEN ''RMA receipt'' 
	WHEN ''13'' THEN ''Invoice'' 
	WHEN ''101'' THEN ''Subsequent cost (production)'' 
	WHEN ''102'' THEN ''Subsequent cost (shipping)'' 
	WHEN ''105'' THEN ''Subsequent cost (semi-finished goods consumption)'' 
	WHEN ''108'' THEN ''Subsequent cost (purchase)''
	WHEN ''201'' THEN ''Change in value (production)'' 
	WHEN ''202'' THEN ''Shipping value change'' 
	WHEN ''205'' THEN ''Change in value (semi-finished goods consumption)'' 
	WHEN ''208'' THEN ''Purchase value change'' 
	WHEN ''213'' THEN ''What the HECK is this nonsense!! Invoicing??'' 
END AS KindOfMovement, pm.soort___, pm.afg__ref, pm.ord__ref, pm.vrs__ref, pm.levr_vnr, 
pm.lyn__ref, pm.ord2_ref, pm.vrs2_ref, pm.datum___, pm.uur_____, pm.jobnr_vw, pm.komment_, 
pm.aantal__, pm.f_aantal, pm.vrrkprys, pm.bedrag__, pm.aant_tof, pm.bedr_tof, pm.dgbk_ref, pm.bkj__ref, 
pm.fak__ref, pm.rowid
FROM vw_stlStockedProducts_w_RnD AS sp INNER JOIN
afgpry__ AS pm ON sp.afg__ref = pm.afg__ref
' 
