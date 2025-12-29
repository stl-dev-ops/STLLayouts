SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[standa__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[standa__](
	[stnd_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prc__akp] [float] NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpr_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_code] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kontrole] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[detailyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek8] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [standa_x] PRIMARY KEY CLUSTERED 
(
	[stnd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__stnd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__stnd_ref]  DEFAULT ('') FOR [stnd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__nkp__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__nkp__det]  DEFAULT ('') FOR [nkp__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__nkp__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__nkp__srt]  DEFAULT ('') FOR [nkp__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__prc__akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__prc__akp]  DEFAULT ((0)) FOR [prc__akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__akpr_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__akpr_srt]  DEFAULT ('') FOR [akpr_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__akpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__akpr_ref]  DEFAULT ('') FOR [akpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__btw_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__btw_code]  DEFAULT ('') FOR [btw_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kontrole]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kontrole]  DEFAULT ('') FOR [kontrole]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__detailyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__detailyn]  DEFAULT ('') FOR [detailyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bcrerek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bcrerek1]  DEFAULT ('') FOR [bcrerek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bcrerek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bcrerek2]  DEFAULT ('') FOR [bcrerek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bdebrek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bdebrek1]  DEFAULT ('') FOR [bdebrek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bdebrek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bdebrek2]  DEFAULT ('') FOR [bdebrek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bdebrek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bdebrek3]  DEFAULT ('') FOR [bdebrek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__bdebrek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__bdebrek4]  DEFAULT ('') FOR [bdebrek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek2]  DEFAULT ('') FOR [kst_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek3]  DEFAULT ('') FOR [kst_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek4]  DEFAULT ('') FOR [kst_rek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek5]  DEFAULT ('') FOR [kst_rek5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek6]  DEFAULT ('') FOR [kst_rek6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek7]  DEFAULT ('') FOR [kst_rek7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_standa__kst_rek8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[standa__] ADD  CONSTRAINT [DF_standa__kst_rek8]  DEFAULT ('') FOR [kst_rek8]
END

