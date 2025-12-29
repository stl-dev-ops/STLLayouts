SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSamplesSent]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlSamplesSent]
AS
SELECT stlSamplesSent.lyn__ref, stlSamplesSent.SalesRepID, paswrd__.username, stlSamplesSent.UpFrontContractDate, stlSamplesSent.ApprovalStatusID, 
stlSamplesApprovalStatusTypes.ApprovalStatus, stlSamplesSent.ApprovalStatusChangedDate, paswrd__.email___
FROM stlSamplesSent LEFT JOIN
paswrd__ ON stlSamplesSent.SalesRepID = paswrd__.usernbr_ LEFT JOIN
stlSamplesApprovalStatusTypes ON stlSamplesSent.ApprovalStatusID = stlSamplesApprovalStatusTypes.ID
' 
