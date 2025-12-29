SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1awgr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1awgr__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[awha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv_ant1] [float] NOT NULL,
	[grv_ant2] [float] NOT NULL,
	[grv_ant3] [float] NOT NULL,
	[sys__vrb] [float] NOT NULL,
	[usr__vrb] [float] NOT NULL,
	[ant_stel] [float] NOT NULL,
	[ant_prod] [float] NOT NULL,
	[vrb_stel] [float] NOT NULL,
	[vrb_prod] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1awgri0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[awha_ref] ASC,
	[afwg_ref] ASC,
	[grv__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__awha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__awha_ref]  DEFAULT ('') FOR [awha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__grv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__grv__ref]  DEFAULT ('') FOR [grv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__grv__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__grv__srt]  DEFAULT ('') FOR [grv__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__grv_ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__grv_ant1]  DEFAULT ((0)) FOR [grv_ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__grv_ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__grv_ant2]  DEFAULT ((0)) FOR [grv_ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__grv_ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__grv_ant3]  DEFAULT ((0)) FOR [grv_ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__sys__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__sys__vrb]  DEFAULT ((0)) FOR [sys__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__usr__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__usr__vrb]  DEFAULT ((0)) FOR [usr__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__ant_stel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__ant_stel]  DEFAULT ((0)) FOR [ant_stel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__ant_prod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__ant_prod]  DEFAULT ((0)) FOR [ant_prod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__vrb_stel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__vrb_stel]  DEFAULT ((0)) FOR [vrb_stel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awgr__vrb_prod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awgr__] ADD  CONSTRAINT [DF_v1awgr__vrb_prod]  DEFAULT ((0)) FOR [vrb_prod]
END

