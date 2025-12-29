SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMaterialCustomFields]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlMaterialCustomFields]
AS

SELECT M.art__ref, 

SL.antw_oms                      AS ShelfLife, 
SL.Months                        AS ShelfLifeMonths, 
RP.antw_txt                      AS replacedby_art__ref, 
SPID.antw_txt                    AS StockedProductID,
LT.antw_num                      AS LeadTime, 
SUPLOG.antw_oms                  AS SupplierLogistics, 
TELT.antw_txt                    AS TempExtendedLeadTime, 
LC.antw_oms                      AS LastCount, 
IT.antw_oms                      AS InkType, 
H2O_UV.antw_oms                  AS WaterUV_Based,
SnH.antw_oms                     AS StockAndHold, 
HT.antw_num                      AS HoldTime,
LTM.antw_oms                     AS LeaderTrailer,
SDS.antw_oms                     AS [SDS on file?],
TDS.antw_oms                     AS [TDS on file?],
REG.antw_oms                     AS [Regulated?],
CAS1.antw_txt                    AS [CAS#1],
CAS2.antw_txt                    AS [CAS#2],
CAS3.antw_txt                    AS [CAS#3],
CAS4.antw_txt                    AS [CAS#4],
MaterialJobRelatedNotes.antw_txt AS MaterialJobRelatedNotes,
Tariff.antw_oms                  AS [Tariff?],
TarrifAmount.antw_num            AS TarrifAmount, 
TariffIncreaseUnit.antw_oms      AS TarrifUnit,
PressesInkAdhAddedTo.antw_txt    AS PressesInkAdhAddedTo


FROM    artiky__ M LEFT JOIN
(
	SELECT SLd.det__ref, SLa.antw_oms, 
	CASE SLd.antw_ref WHEN ''000001'' THEN 999 WHEN ''000002'' THEN 6 WHEN ''000003'' THEN 3 WHEN ''000004'' THEN 9 WHEN ''000005'' THEN 12 WHEN ''000006'' THEN 18 WHEN ''000007'' THEN 24 END AS Months
	FROM gegdet__ AS SLd INNER JOIN
	gegant__ AS SLa ON SLd.vrg__ref = SLa.vrg__ref AND SLd.antw_ref = SLa.antw_ref AND SLd.tabname_ = ''artiky__'' AND SLd.vrg__ref = ''000015''
) AS SL ON SL.det__ref = M.art__ref LEFT JOIN
(
	SELECT RBd.det__ref, RBd.antw_txt
	FROM gegdet__ RBd
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000017''
) RP ON RP.det__ref = M.art__ref LEFT JOIN
(
	SELECT RBd.det__ref, RBd.antw_txt 
	FROM gegdet__ RBd
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000022''
) SPID ON SPID.det__ref = M.art__ref LEFT JOIN
(
	SELECT SUPLOGd.det__ref, SUPLOGa.antw_oms
	FROM gegdet__ AS SUPLOGd INNER JOIN
	gegant__ AS SUPLOGa ON SUPLOGd.vrg__ref = SUPLOGa.vrg__ref AND SUPLOGd.antw_ref = SUPLOGa.antw_ref AND SUPLOGd.tabname_ = ''artiky__'' AND SUPLOGd.vrg__ref = ''000023''
) AS SUPLOG ON SUPLOG.det__ref = M.art__ref LEFT JOIN
(
	SELECT TEMPEXTLEADTIMEd.det__ref, TEMPEXTLEADTIMEd.antw_txt
	FROM gegdet__ TEMPEXTLEADTIMEd
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000024''
) TELT ON TELT.det__ref = M.art__ref LEFT JOIN
(
	SELECT LEADTIMEd.det__ref, LEADTIMEd.antw_num
	FROM gegdet__ LEADTIMEd
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000062''
) LT ON LT.det__ref = M.art__ref LEFT JOIN
(
	SELECT LCd.det__ref, LCa.antw_oms
	FROM gegdet__ AS LCd INNER JOIN
	gegant__ AS LCa ON LCd.vrg__ref = LCa.vrg__ref AND LCd.antw_ref = LCa.antw_ref AND LCd.tabname_ = ''artiky__'' AND LCd.vrg__ref = ''000025''
) LC ON LC.det__ref = M.art__ref  LEFT JOIN
(
	SELECT ITd.det__ref, ITa.antw_oms
	FROM gegdet__ AS ITd INNER JOIN
	gegant__ AS ITa ON ITd.vrg__ref = ITa.vrg__ref AND ITd.antw_ref = ITa.antw_ref AND ITd.tabname_ = ''artiky__'' AND ITd.vrg__ref = ''000029''
) IT ON IT.det__ref = M.art__ref LEFT JOIN
(
	SELECT SnHd.det__ref, SnHa.antw_oms
	FROM gegdet__ AS SnHd INNER JOIN
	gegant__ AS SnHa ON SnHd.vrg__ref = SnHa.vrg__ref AND SnHd.antw_ref = SnHa.antw_ref AND SnHd.tabname_ = ''artiky__'' AND SnHd.vrg__ref = ''000034''
) SnH ON SnH.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_num 
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000035''
) HT ON HT.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000039''
) AS LTM ON LTM.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000055''
) AS SDS ON SDS.det__ref = M.art__ref  LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000049''
) AS REG ON REG.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000063''
) AS TDS ON TDS.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000050''
) AS CAS1 ON CAS1.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000051''
) AS CAS2 ON CAS2.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000052''
) AS CAS3 ON CAS3.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000053''
) AS CAS4 ON CAS4.det__ref = M.art__ref  LEFT JOIN
(
	SELECT H2O_UVd.det__ref, H2O_UVa.antw_oms
	FROM gegdet__ AS H2O_UVd INNER JOIN
	gegant__ AS H2O_UVa ON H2O_UVd.vrg__ref = H2O_UVa.vrg__ref AND H2O_UVd.antw_ref = H2O_UVa.antw_ref AND H2O_UVd.tabname_ = ''artiky__'' AND H2O_UVd.vrg__ref = ''000061''
) AS H2O_UV ON H2O_UV.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000065''
) AS MaterialJobRelatedNotes ON MaterialJobRelatedNotes.det__ref = M.art__ref  LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000071''
) AS Tariff ON Tariff.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_num 
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000072''
) TarrifAmount ON TarrifAmount.det__ref = M.art__ref LEFT JOIN
(
	SELECT det__ref, antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND gegdet__.antw_ref = gegant__.antw_ref AND gegdet__.tabname_ = ''artiky__'' AND gegdet__.vrg__ref = ''000083''
) TariffIncreaseUnit ON TariffIncreaseUnit.det__ref = M.art__ref  LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE tabname_ = ''artiky__'' AND vrg__ref = ''000085''
) AS PressesInkAdhAddedTo ON PressesInkAdhAddedTo.det__ref = M.art__ref 


' 
