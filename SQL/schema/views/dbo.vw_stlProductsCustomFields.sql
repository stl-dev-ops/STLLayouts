SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductsCustomFields]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProductsCustomFields]
AS
SELECT 
P.afg__ref, 
SalesSpecCustomerID		= SSC.antw_txt, 
Deadener				= DEAD.antw_oms, 
LeadTime				= LT.antw_txt, 
ShelfLife				= SL.antw_oms, 
MachineNames			= M.antw_txt, 
STL_RnD					= stl_RnD.antw_txt, 
HideOnSampleReport		= HOSR.antw_txt, 
Roll_Leader				= stl_RL.antw_num, 
Roll_Leader_Notes		= stl_RLn.antw_txt, 
LeaderMaterial			= LM.antw_oms, 
TrailerMaterial			= TM.antw_oms, 
ProductionCategoryPass1	= PCP1.antw_oms, 
MinutesPerMillionFeetP1	= MPMP1.antw_num, 
ProductionCategoryPass2	= PCP2.antw_oms, 
MinutesPerMillionFeetP2	= MPMP2.antw_num, 
DurometerSpec			= DS.antw_oms, 
RnDInvolvement			= RD.antw_txt,
SpecProductID			= AGG.antw_txt 

FROM
afgart__  P LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000001'')
) AS SSC ON SSC.det__ref = P.afg__ref LEFT JOIN
(
	SELECT gegdet___16.det__ref, gegant__.antw_oms
	FROM gegdet__ AS gegdet___16 LEFT JOIN
	gegant__ ON gegdet___16.vrg__ref = gegant__.vrg__ref AND gegdet___16.antw_ref = gegant__.antw_ref
	WHERE (gegdet___16.tabname_ = ''afgart__'') AND (gegdet___16.vrg__ref = ''000002'')
) AS DEAD ON P.afg__ref = DEAD.det__ref LEFT JOIN
(
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___15
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000018'')
) AS M ON P.afg__ref = M.det__ref LEFT JOIN
(
	SELECT gegdet___14.det__ref, gegant___7.antw_oms
	FROM gegdet__ AS gegdet___14 LEFT JOIN
	gegant__ AS gegant___7 ON gegdet___14.vrg__ref = gegant___7.vrg__ref AND gegdet___14.antw_ref = gegant___7.antw_ref
	WHERE (gegdet___14.tabname_ = ''afgart__'') AND (gegdet___14.vrg__ref = ''000016'')
) AS SL ON P.afg__ref = SL.det__ref LEFT JOIN
(
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___13
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000014'')
) AS LT ON P.afg__ref = LT.det__ref LEFT JOIN
(
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___12
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000020'')
) AS HOSR ON P.afg__ref = HOSR.det__ref LEFT JOIN
(
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___11
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000019'')
) AS stl_RnD ON P.afg__ref = stl_RnD.det__ref LEFT JOIN
(
	SELECT det__ref, antw_num
	FROM gegdet__ AS gegdet___10
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000021'')
) AS stl_RL ON P.afg__ref = stl_RL.det__ref LEFT JOIN
(
	SELECT gegdet___9.det__ref, gegant___6.antw_oms
	FROM gegdet__ AS gegdet___9 LEFT JOIN
	gegant__ AS gegant___6 ON gegdet___9.vrg__ref = gegant___6.vrg__ref AND gegdet___9.antw_ref = gegant___6.antw_ref
	WHERE (gegdet___9.tabname_ = ''afgart__'') AND (gegdet___9.vrg__ref = ''000030'')
) AS PCP1 ON P.afg__ref = PCP1.det__ref LEFT JOIN
(
	SELECT det__ref, antw_num
	FROM gegdet__ AS gegdet___8
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000031'')
) AS MPMP1 ON P.afg__ref = MPMP1.det__ref LEFT JOIN
(
	SELECT gegdet___7.det__ref, gegant___5.antw_oms
	FROM gegdet__ AS gegdet___7 LEFT JOIN
	gegant__ AS gegant___5 ON gegdet___7.vrg__ref = gegant___5.vrg__ref AND gegdet___7.antw_ref = gegant___5.antw_ref
	WHERE (gegdet___7.tabname_ = ''afgart__'') AND (gegdet___7.vrg__ref = ''000032'')
) AS PCP2 ON P.afg__ref = PCP2.det__ref LEFT JOIN
(
	SELECT det__ref, antw_num
	FROM gegdet__ AS gegdet___6
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000033'')
) AS MPMP2 ON P.afg__ref = MPMP2.det__ref LEFT JOIN
(
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___5
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000036'')
) AS stl_RLn ON P.afg__ref = stl_RLn.det__ref LEFT JOIN
(
	SELECT gegdet___4.det__ref, gegant___4.antw_oms
	FROM gegdet__ AS gegdet___4 LEFT JOIN
	gegant__ AS gegant___4 ON gegdet___4.vrg__ref = gegant___4.vrg__ref AND gegdet___4.antw_ref = gegant___4.antw_ref
	WHERE (gegdet___4.tabname_ = ''afgart__'') AND (gegdet___4.vrg__ref = ''000037'')
) AS LM ON P.afg__ref = LM.det__ref LEFT JOIN
(
	SELECT gegdet___3.det__ref, gegant___3.antw_oms
	FROM gegdet__ AS gegdet___3 LEFT JOIN
	gegant__ AS gegant___3 ON gegdet___3.vrg__ref = gegant___3.vrg__ref AND gegdet___3.antw_ref = gegant___3.antw_ref
	WHERE (gegdet___3.tabname_ = ''afgart__'') AND (gegdet___3.vrg__ref = ''000038'')
) AS TM ON P.afg__ref = TM.det__ref LEFT JOIN
(
	SELECT gegdet___2.det__ref, gegant___2.antw_oms
	FROM gegdet__ AS gegdet___2 LEFT JOIN
	gegant__ AS gegant___2 ON gegdet___2.vrg__ref = gegant___2.vrg__ref AND gegdet___2.antw_ref = gegant___2.antw_ref
	WHERE (gegdet___2.tabname_ = ''afgart__'') AND (gegdet___2.vrg__ref = ''000040'')
) AS DS ON P.afg__ref = DS.det__ref LEFT JOIN
(
	SELECT gegdet___1.det__ref, CAST(gegdet___1.antw_txt AS NVARCHAR(255)) AS antw_txt
	FROM gegdet__ AS gegdet___1 LEFT JOIN
	gegant__ AS gegant___1 ON gegdet___1.vrg__ref = gegant___1.vrg__ref AND gegdet___1.antw_ref = gegant___1.antw_ref
	WHERE (gegdet___1.tabname_ = ''afgart__'') AND (gegdet___1.vrg__ref = ''000066'')
) AS RD ON P.afg__ref = RD.det__ref LEFT JOIN
(
	SELECT det__ref, antw_txt
	FROM gegdet__
	WHERE (tabname_ = ''afgart__'') AND (vrg__ref = ''000067'')
) AS AGG ON AGG.det__ref = P.afg__ref 
' 
