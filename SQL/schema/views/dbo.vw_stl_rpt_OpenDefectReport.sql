SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_rpt_OpenDefectReport]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_rpt_OpenDefectReport
AS
SELECT        Claim_Open_Closed, ord__ref, naam____, Date_Found AS Date_Found_From, Date_Found AS Date_Found_To, Defect_Description, Quantity_Defective_Labels, Quantity_Defective_Feet, RMA_NCR_Defect_Report, 
                         omschr__
FROM            dbo.stlDF_DefectLog
' 
