SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3trn___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3trn___](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_lev] [int] NOT NULL,
	[aant_adr] [int] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_oms] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__keu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__pct] [float] NOT NULL,
	[oplage__] [int] NOT NULL,
	[m2______] [float] NOT NULL,
	[m3______] [float] NOT NULL,
	[vast_gew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewicht_] [float] NOT NULL,
	[gew_stuk] [float] NOT NULL,
	[vpk__gew] [float] NOT NULL,
	[ext__gew] [float] NOT NULL,
	[tot__gew] [float] NOT NULL,
	[in_klass] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vryeprys] [float] NOT NULL,
	[prys_vry] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_pal] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i3_trn_1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[trsp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___trsp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___trsp_ref]  DEFAULT ('') FOR [trsp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___trsp_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___trsp_vnr]  DEFAULT ('') FOR [trsp_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___aant_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___aant_lev]  DEFAULT ((0)) FOR [aant_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___aant_adr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___aant_adr]  DEFAULT ((0)) FOR [aant_adr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___lok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___lok__srt]  DEFAULT ('') FOR [lok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___trsp_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___trsp_oms]  DEFAULT ('') FOR [trsp_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___ant__keu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___ant__keu]  DEFAULT ('') FOR [ant__keu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___ant__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___ant__pct]  DEFAULT ((0)) FOR [ant__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___m2______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___m2______]  DEFAULT ((0)) FOR [m2______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___m3______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___m3______]  DEFAULT ((0)) FOR [m3______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___vast_gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___vast_gew]  DEFAULT ('') FOR [vast_gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___gew_stuk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___gew_stuk]  DEFAULT ((0)) FOR [gew_stuk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___vpk__gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___vpk__gew]  DEFAULT ((0)) FOR [vpk__gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___ext__gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___ext__gew]  DEFAULT ((0)) FOR [ext__gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___tot__gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___tot__gew]  DEFAULT ((0)) FOR [tot__gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___in_klass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___in_klass]  DEFAULT ('') FOR [in_klass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___vryeprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___vryeprys]  DEFAULT ((0)) FOR [vryeprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___prys_vry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___prys_vry]  DEFAULT ('') FOR [prys_vry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___pak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___pak__ref]  DEFAULT ('') FOR [pak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trn___aant_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trn___] ADD  CONSTRAINT [DF_v3trn___aant_pal]  DEFAULT ((0)) FOR [aant_pal]
END

