SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQC_QSAs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQC_QSAs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlSR_SiliconeRecipeID] [int] NOT NULL,
	[TestDateTime] [datetime] NOT NULL,
	[EmployeeName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[AniloxLPI] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[AniloxBCM] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[RollNumber] [int] NOT NULL,
	[Operator] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Center] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Gear] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQC_QSAs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQC_QSAs_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQC_QSAs] ADD  CONSTRAINT [DF_stlQC_QSAs_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQC_QSAs_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQC_QSAs] ADD  CONSTRAINT [DF_stlQC_QSAs_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQC_QSAs_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQC_QSAs] ADD  CONSTRAINT [DF_stlQC_QSAs_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

