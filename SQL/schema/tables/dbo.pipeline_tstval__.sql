SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pipeline_tstval__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pipeline_tstval__](
	[pipeline_id] [int] NOT NULL,
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[endstate] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pipeline_tstvali0] PRIMARY KEY CLUSTERED 
(
	[pipeline_id] ASC,
	[tst__ref] ASC,
	[tstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline_tstval__pipeline_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline_tstval__] ADD  CONSTRAINT [DF_pipeline_tstval__pipeline_id]  DEFAULT ((0)) FOR [pipeline_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline_tstval__tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline_tstval__] ADD  CONSTRAINT [DF_pipeline_tstval__tst__ref]  DEFAULT ('') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline_tstval__tstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline_tstval__] ADD  CONSTRAINT [DF_pipeline_tstval__tstd_ref]  DEFAULT ('') FOR [tstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline_tstval__endstate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline_tstval__] ADD  CONSTRAINT [DF_pipeline_tstval__endstate]  DEFAULT ('None') FOR [endstate]
END

