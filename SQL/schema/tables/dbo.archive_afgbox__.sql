SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[archive_afgbox__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[archive_afgbox__](
	[box__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__dat] [date] NOT NULL,
	[uit__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_uit] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dat] [date] NOT NULL,
	[lev__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud01] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud02] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud03] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud04] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud_flt01] [float] NOT NULL,
	[inhoud_flt02] [float] NOT NULL,
	[inhoud_flt03] [float] NOT NULL,
	[inhoud_flt04] [float] NOT NULL,
	[ex___rol] [float] NOT NULL,
	[rol_doos] [float] NOT NULL,
	[ex__rrol] [float] NOT NULL,
	[rolrdoos] [float] NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [archive_afgboxi0] PRIMARY KEY CLUSTERED 
(
	[jobnr_archive] ASC,
	[box__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__box__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__box__ref]  DEFAULT ('') FOR [box__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__toestand]  DEFAULT ('0') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__crea_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__crea_uur]  DEFAULT ('  0:00') FOR [crea_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__uit__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__uit__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [uit__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__uit__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__uit__uur]  DEFAULT ('  0:00') FOR [uit__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__uit__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__uit__usr]  DEFAULT ('') FOR [uit__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__jobnr_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__jobnr_uit]  DEFAULT ('') FOR [jobnr_uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__lev__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__lev__uur]  DEFAULT ('  0:00') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud01]  DEFAULT ('') FOR [inhoud01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud02]  DEFAULT ('') FOR [inhoud02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud03]  DEFAULT ('') FOR [inhoud03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud04]  DEFAULT ('') FOR [inhoud04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud_flt01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud_flt01]  DEFAULT ((0)) FOR [inhoud_flt01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud_flt02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud_flt02]  DEFAULT ((0)) FOR [inhoud_flt02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud_flt03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud_flt03]  DEFAULT ((0)) FOR [inhoud_flt03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__inhoud_flt04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__inhoud_flt04]  DEFAULT ((0)) FOR [inhoud_flt04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__ex___rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__ex___rol]  DEFAULT ((0)) FOR [ex___rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__rol_doos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__rol_doos]  DEFAULT ((0)) FOR [rol_doos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__ex__rrol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__ex__rrol]  DEFAULT ((0)) FOR [ex__rrol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__rolrdoos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__rolrdoos]  DEFAULT ((0)) FOR [rolrdoos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_afgbox__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_afgbox__] ADD  CONSTRAINT [DF_archive_afgbox__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

