SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSpecialJobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSpecialJobs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[DifficultyID] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlDifficultProductsCustomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSpecialJobs_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlSpecialJobs_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_DifficultyID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_DifficultyID]  DEFAULT ((1)) FOR [DifficultyID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDifficultProductsCustomers_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlDifficultProductsCustomers_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSpecialJobs_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlSpecialJobs_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSpecialJobs_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSpecialJobs] ADD  CONSTRAINT [DF_stlSpecialJobs_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

