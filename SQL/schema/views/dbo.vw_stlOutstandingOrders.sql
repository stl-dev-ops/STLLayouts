SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlOutstandingOrders]'))
EXEC dbo.sp_executesql @statement = N'

/* This comment precedes the view definition*/
CREATE VIEW [dbo].[vw_stlOutstandingOrders]
AS
SELECT B.bst__ref OrderID, B.lyn__ref SalesOrderID, B.kla__rpn Customer, K.knp__vnm, K.knp__nam, K.email___, B.bst__dat OrderDate, 
B.zynrefkl [Customer Ref], B.bsbn_kla [Customer PO#], B.afg__ref, B.afg_oms1 [Description], 
B.beaantal [Quantity], 
CASE B.fac_eenh 
	WHEN ''1'' THEN eenh1int 
	WHEN ''2'' THEN eenh2int 
	WHEN ''3'' THEN eenh3int 
	WHEN ''4'' THEN eenh4int 
END [Unit], 
B.preexcl_ [Price], B.bedr__bm [Amount], B.vrzv_dat [Expected ship date], 
CASE B.prys_srt
	WHEN ''1'' THEN ''Discount/supplement'' 
	WHEN ''2'' THEN ''Fixed amount'' 
	WHEN ''3'' THEN ''/lb'' 
	WHEN ''4'' THEN ''/page'' 
	WHEN ''5'' THEN ''/piece'' 
	WHEN ''6'' THEN ''/100'' 
	WHEN ''7'' THEN ''/1,000'' 
	WHEN ''8'' THEN ''/100,000'' 
	WHEN ''9'' THEN ''/sh tn'' 
	WHEN ''B'' THEN ''/ft'' 
	WHEN ''C'' THEN ''/msi'' 
ELSE 
	B.prys_srt 
END AS PriceType, 
ConfirmationStatus = (SELECT omschr__ FROM tstval__ WHERE tabname_ = ''bstlyn__'' AND fldname_ = ''tstval02'' AND tstd_ref = B.tstval02) 
FROM bstlyn__ B LEFT JOIN 
afgart__ P ON B.afg__ref = P.afg__ref LEFT JOIN 
konpkl__ K ON K.knp__ref = B.knp__ref AND K.kla__ref = B.kla__ref LEFT JOIN 
vpakpr__ ON vpakpr__.vpak_ref = P.vpak_ref LEFT JOIN 
vpakwy__ ON vpakwy__.vpk__ref = vpakpr__.vpk__ref 
WHERE B.vrz__tst < ''Y'' AND 
B.kla__ref NOT IN (''100208'', ''100349'', ''100377'', ''100490'', ''100376'', ''100222'', ''100109'', ''100506'', ''100509'') 
' 
