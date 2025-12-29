SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dl_prd_pf_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dl_prd_pf_operation__](
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlprdref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[operation_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[side] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[count] [int] NOT NULL,
	[default_] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [dl_prd_pf_operationi0] PRIMARY KEY CLUSTERED 
(
	[prd__ref] ASC,
	[dlprdref] ASC,
	[operation_id] ASC,
	[side] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__dlprdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__dlprdref]  DEFAULT ('000') FOR [dlprdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__side]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__side]  DEFAULT ('') FOR [side]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__count]  DEFAULT ((0)) FOR [count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd_pf_operation__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd_pf_operation__] ADD  CONSTRAINT [DF_dl_prd_pf_operation__default_]  DEFAULT ((0)) FOR [default_]
END

