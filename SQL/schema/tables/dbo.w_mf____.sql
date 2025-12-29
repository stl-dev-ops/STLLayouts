SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_mf____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_mf____](
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__kg] [float] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_bew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etik_drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_mf__i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____aant__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____aant__kg]  DEFAULT ((0)) FOR [aant__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____type_bew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____type_bew]  DEFAULT ('') FOR [type_bew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____etik_drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____etik_drk]  DEFAULT ('') FOR [etik_drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_mf____uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_mf____] ADD  CONSTRAINT [DF_w_mf____uur_____]  DEFAULT ('') FOR [uur_____]
END

