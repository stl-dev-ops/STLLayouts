SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSubstrateCustomFields]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlSubstrateCustomFields
AS
SELECT        S.drg__ref, ADH1.AdhesiveID1, HMWB1.HotmeltID1, HMWB1.Hotmelt1, GT1.GlueThickness1, U1.UnitID1, U1.Unit1, ADH2.AdhesiveID2, HMWB2.HotmeltID2, HMWB2.Hotmelt2, GT2.GlueThickness2, U2.UnitID2, U2.Unit2, 
                         tc_1.TollCharge
FROM            dbo.drgers__ AS S LEFT OUTER JOIN
                             (SELECT        det__ref, antw_txt AS AdhesiveID1
                               FROM            dbo.gegdet__ AS ADHd
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000041'')) AS ADH1 ON ADH1.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        HMWBd.det__ref, HMWBd.antw_ref AS HotmeltID1, HMWBa.antw_oms AS Hotmelt1
                               FROM            dbo.gegdet__ AS HMWBd INNER JOIN
                                                         dbo.gegant__ AS HMWBa ON HMWBd.vrg__ref = HMWBa.vrg__ref AND HMWBd.antw_ref = HMWBa.antw_ref AND HMWBd.tabname_ = ''drgers__'' AND HMWBd.vrg__ref = ''000042'') AS HMWB1 ON 
                         HMWB1.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_num AS GlueThickness1
                               FROM            dbo.gegdet__ AS GTd
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000043'')) AS GT1 ON GT1.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        Ud.det__ref, Ud.antw_ref AS UnitID1, Ua.antw_oms AS Unit1
                               FROM            dbo.gegdet__ AS Ud INNER JOIN
                                                         dbo.gegant__ AS Ua ON Ud.vrg__ref = Ua.vrg__ref AND Ud.antw_ref = Ua.antw_ref AND Ud.tabname_ = ''drgers__'' AND Ud.vrg__ref = ''000044'') AS U1 ON U1.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_txt AS AdhesiveID2
                               FROM            dbo.gegdet__ AS ADHd
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000045'')) AS ADH2 ON ADH2.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        HMWBd.det__ref, HMWBd.antw_ref AS HotmeltID2, HMWBa.antw_oms AS Hotmelt2
                               FROM            dbo.gegdet__ AS HMWBd INNER JOIN
                                                         dbo.gegant__ AS HMWBa ON HMWBd.vrg__ref = HMWBa.vrg__ref AND HMWBd.antw_ref = HMWBa.antw_ref AND HMWBd.tabname_ = ''drgers__'' AND HMWBd.vrg__ref = ''000046'') AS HMWB2 ON 
                         HMWB2.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_num AS GlueThickness2
                               FROM            dbo.gegdet__ AS GTd
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000047'')) AS GT2 ON GT2.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        Ud.det__ref, Ud.antw_ref AS UnitID2, Ua.antw_oms AS Unit2
                               FROM            dbo.gegdet__ AS Ud INNER JOIN
                                                         dbo.gegant__ AS Ua ON Ud.vrg__ref = Ua.vrg__ref AND Ud.antw_ref = Ua.antw_ref AND Ud.tabname_ = ''drgers__'' AND Ud.vrg__ref = ''000048'') AS U2 ON U2.det__ref = S.drg__ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_num AS TollCharge
                               FROM            dbo.gegdet__ AS GTd
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000101'')) AS tc_1 ON S.drg__ref = tc_1.det__ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_num AS TollCharge
                               FROM            dbo.gegdet__ AS TC
                               WHERE        (tabname_ = ''drgers__'') AND (vrg__ref = ''000101'')) AS TC1 ON TC1.det__ref = S.drg__ref
' 
