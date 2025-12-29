SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkmnt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkmnt__](
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_wyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__per] [int] NOT NULL,
	[prf__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf_goed] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd__utl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstduref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdbref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_uref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_bref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_mref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkmnti1] PRIMARY KEY CLUSTERED 
(
	[mnt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__mnt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__mnt__rpn]  DEFAULT ('') FOR [mnt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__mnt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__mnt__oms]  DEFAULT ('') FOR [mnt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__prd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__prd__oms]  DEFAULT ('') FOR [prd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__lev__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__lev__srt]  DEFAULT ('1') FOR [lev__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__lev_wyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__lev_wyze]  DEFAULT ('') FOR [lev_wyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__lev__per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__lev__per]  DEFAULT ((0)) FOR [lev__per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__prf__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__prf__pag]  DEFAULT ('') FOR [prf__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__prf_goed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__prf_goed]  DEFAULT ('') FOR [prf_goed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__tyd__utl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__tyd__utl]  DEFAULT ('') FOR [tyd__utl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__tyd___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__tyd___01]  DEFAULT ('  0:00') FOR [tyd___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__tyd___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__tyd___02]  DEFAULT ('  0:00') FOR [tyd___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__kstduref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__kstduref]  DEFAULT ('') FOR [kstduref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__kstdbref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__kstdbref]  DEFAULT ('') FOR [kstdbref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__kstdmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__kstdmref]  DEFAULT ('') FOR [kstdmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__rbk_uref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__rbk_uref]  DEFAULT ('') FOR [rbk_uref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__rbk_bref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__rbk_bref]  DEFAULT ('') FOR [rbk_bref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__rbk_mref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__rbk_mref]  DEFAULT ('') FOR [rbk_mref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmnt__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmnt__] ADD  CONSTRAINT [DF_drkmnt__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

