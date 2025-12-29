SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMaterialLogistics]'))
EXEC dbo.sp_executesql @statement = N'












CREATE VIEW [dbo].[vw_stlMaterialLogistics]
AS
SELECT m.art__ref, m.art__rpn, m.art_oms1, m.breedte_, m.Last3AverageLeadTime, mcf.LeadTime, mcf.SupplierLogistics, mcf.TempExtendedLeadTime, 
 m1.art__ref art__ref1, m1.art__rpn art__rpn1, m1.Last3AverageLeadTime Last3AverageLeadTime1, mcf1.LeadTime LeadTime1, 
 m2.art__ref art__ref2, m2.art__rpn art__rpn2, m2.Last3AverageLeadTime Last3AverageLeadTime2, mcf2.LeadTime LeadTime2, 
 m3.art__ref art__ref3, m3.art__rpn art__rpn3, m3.Last3AverageLeadTime Last3AverageLeadTime3, mcf3.LeadTime LeadTime3 
FROM vw_stlMaterials m LEFT JOIN
vw_stlMaterialCustomFields mcf ON m.art__ref = mcf.art__ref LEFT JOIN
vw_stlMaterials m1 ON UPPER(m.SubstrateKey1) = UPPER(m1.art__rpn) LEFT JOIN
vw_stlMaterials m2 ON UPPER(m.SubstrateKey2) = UPPER(m2.art__rpn) LEFT JOIN
vw_stlMaterials m3 ON UPPER(m.SubstrateKey3) = UPPER(m3.art__rpn) LEFT JOIN
vw_stlMaterialCustomFields mcf1 ON m1.art__ref = mcf1.art__ref LEFT JOIN
vw_stlMaterialCustomFields mcf2 ON m1.art__ref = mcf2.art__ref LEFT JOIN
vw_stlMaterialCustomFields mcf3 ON m1.art__ref = mcf3.art__ref   


' 
