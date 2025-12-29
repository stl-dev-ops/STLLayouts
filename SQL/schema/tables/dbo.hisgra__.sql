SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisgra__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisgra__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[graf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_afsl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_afsl] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[fpri__vm] [float] NOT NULL,
	[fpri__bm] [float] NOT NULL,
	[fpri__om] [float] NOT NULL,
	[fprik_vm] [float] NOT NULL,
	[fprik_bm] [float] NOT NULL,
	[fprik_om] [float] NOT NULL,
	[fprto_vm] [float] NOT NULL,
	[fprto_bm] [float] NOT NULL,
	[fprto_om] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[faant__2] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisgrai0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__graf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__graf_ref]  DEFAULT ('') FOR [graf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__dat_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__dat_afsl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fpri__vm]  DEFAULT ((0)) FOR [fpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fpri__bm]  DEFAULT ((0)) FOR [fpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fpri__om]  DEFAULT ((0)) FOR [fpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprik_vm]  DEFAULT ((0)) FOR [fprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprik_bm]  DEFAULT ((0)) FOR [fprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprik_om]  DEFAULT ((0)) FOR [fprik_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprto_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprto_vm]  DEFAULT ((0)) FOR [fprto_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprto_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprto_bm]  DEFAULT ((0)) FOR [fprto_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__fprto_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__fprto_om]  DEFAULT ((0)) FOR [fprto_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgra__faant__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgra__] ADD  CONSTRAINT [DF_hisgra__faant__2]  DEFAULT ((0)) FOR [faant__2]
END

