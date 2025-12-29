SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_vrbr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_vrbr__](
	[idf_vrbr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[extra___] [float] NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__kg] [float] NOT NULL,
	[extra_kg] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[rollenex] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_txt] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel_voor] [float] NOT NULL,
	[tel___na] [float] NOT NULL,
	[bcrerek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vrbr_id1] PRIMARY KEY CLUSTERED 
(
	[idf_vrbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_vrbr__]') AND name = N'vrbr_id2')
CREATE NONCLUSTERED INDEX [vrbr_id2] ON [dbo].[w_vrbr__]
(
	[art__ref] ASC,
	[ord__ref] ASC,
	[suborder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_vrbr__]') AND name = N'wvrbrid3')
CREATE NONCLUSTERED INDEX [wvrbrid3] ON [dbo].[w_vrbr__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__idf_vrbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__idf_vrbr]  DEFAULT ('') FOR [idf_vrbr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__res__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__res__ref]  DEFAULT ('') FOR [res__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__extra___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__extra___]  DEFAULT ((0)) FOR [extra___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__aant__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__aant__kg]  DEFAULT ((0)) FOR [aant__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__extra_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__extra_kg]  DEFAULT ((0)) FOR [extra_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__rollenex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__rollenex]  DEFAULT ((0)) FOR [rollenex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__druk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__druk____]  DEFAULT ('') FOR [druk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__uitgeput]  DEFAULT ('') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__kmnt_txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__kmnt_txt]  DEFAULT ('') FOR [kmnt_txt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__tel_voor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__tel_voor]  DEFAULT ((0)) FOR [tel_voor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__tel___na]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__tel___na]  DEFAULT ((0)) FOR [tel___na]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bcrerek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bcrerek1]  DEFAULT ('') FOR [bcrerek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bcrerek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bcrerek2]  DEFAULT ('') FOR [bcrerek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bdebrek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bdebrek1]  DEFAULT ('') FOR [bdebrek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bdebrek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bdebrek2]  DEFAULT ('') FOR [bdebrek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bdebrek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bdebrek3]  DEFAULT ('') FOR [bdebrek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__bdebrek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__bdebrek4]  DEFAULT ('') FOR [bdebrek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbr__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbr__] ADD  CONSTRAINT [DF_w_vrbr__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

