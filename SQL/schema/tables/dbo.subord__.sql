SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subord__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subord__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[elm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtvar__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [subord_1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC,
	[suborder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__elm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__elm__ref]  DEFAULT ('') FOR [elm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_subord__fmtvar__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[subord__] ADD  CONSTRAINT [DF_subord__fmtvar__]  DEFAULT ('') FOR [fmtvar__]
END

