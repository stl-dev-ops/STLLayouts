SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDF_DefectLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDF_DefectLog](
	[stlDF_DefectLogID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[Date_Found] [datetime] NULL,
	[Format_Spools_Flat_Rolls] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Press_Ran_On_Coater] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Dept_Defect_Originated] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Defect_Originator_Operator] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Caught_Where] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Defect_Description] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Category] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Quantity_Defective_Labels] [int] NULL,
	[Quantity_Defective_Feet] [float] NULL,
	[Quantity_Defective_FeetOLD] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Claim_Open_Closed] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Logged_by] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Cost_of_Defect_sales] [money] NULL,
	[Price_Per_M_sales] [money] NULL,
	[Approximate_COGs] [money] NULL,
	[QA_Time_Hrs] [int] NULL,
	[RMA_NCR_Defect_Report] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Comment] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Type] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Less_than_500_Count] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[best_dat] [datetime] NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NULL,
	[repeat] [float] NULL,
	[numAcross] [int] NULL,
	[prys_peh] [float] NULL,
	[produced_lbls] [int] NULL,
	[descriptionCategory] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[matWidth] [float] NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[enteredDefectiveFt] [int] NULL,
	[enteredDefectiveCount] [int] NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlDF_DefectLog] PRIMARY KEY CLUSTERED 
(
	[stlDF_DefectLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_Claim_Open_Closed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_Claim_Open_Closed]  DEFAULT ('') FOR [Claim_Open_Closed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_Approximate_COGs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_Approximate_COGs]  DEFAULT ((0)) FOR [Approximate_COGs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_repeat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_repeat]  DEFAULT ((0)) FOR [repeat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_numAcross]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_numAcross]  DEFAULT ((0)) FOR [numAcross]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_prys_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_prys_peh]  DEFAULT ((0)) FOR [prys_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_produced_lbls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_produced_lbls]  DEFAULT ((0)) FOR [produced_lbls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_descriptionCategory]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_descriptionCategory]  DEFAULT ('') FOR [descriptionCategory]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_matWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_matWidth]  DEFAULT ((0)) FOR [matWidth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_enteredDefectiveFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_enteredDefectiveFt]  DEFAULT ((0)) FOR [enteredDefectiveFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_enteredDefectiveCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_enteredDefectiveCount]  DEFAULT ((0)) FOR [enteredDefectiveCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_DefectLog_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_DefectLog] ADD  CONSTRAINT [DF_stlDF_DefectLog_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

