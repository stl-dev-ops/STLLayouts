SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_rsb3__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_rsb3__](
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak_oref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaksoref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_bew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[etik_drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_rsb3i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__vak_oref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__vak_oref]  DEFAULT ('') FOR [vak_oref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__vaksoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__vaksoref]  DEFAULT ('') FOR [vaksoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__type_bew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__type_bew]  DEFAULT ('') FOR [type_bew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__etik_drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__etik_drk]  DEFAULT ('') FOR [etik_drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb3__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb3__] ADD  CONSTRAINT [DF_w_rsb3__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

