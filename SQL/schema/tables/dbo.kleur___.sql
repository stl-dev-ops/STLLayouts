SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kleur___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kleur___](
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr_oms9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_name] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kleur_i0] PRIMARY KEY CLUSTERED 
(
	[klr__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms1]  DEFAULT ('') FOR [klr_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms2]  DEFAULT ('') FOR [klr_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms3]  DEFAULT ('') FOR [klr_oms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms4]  DEFAULT ('') FOR [klr_oms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms5]  DEFAULT ('') FOR [klr_oms5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms6]  DEFAULT ('') FOR [klr_oms6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms7]  DEFAULT ('') FOR [klr_oms7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms8]  DEFAULT ('') FOR [klr_oms8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___klr_oms9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___klr_oms9]  DEFAULT ('') FOR [klr_oms9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kleur___jdf_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kleur___] ADD  CONSTRAINT [DF_kleur___jdf_name]  DEFAULT ('') FOR [jdf_name]
END

