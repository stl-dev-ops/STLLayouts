SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prykod__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prykod__](
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ratio1__] [float] NOT NULL,
	[ratio2__] [float] NOT NULL,
	[tw_druk_] [float] NOT NULL,
	[dek_tw__] [float] NOT NULL,
	[vkp_tw__] [float] NOT NULL,
	[vkpakp__] [float] NOT NULL,
	[vkppap__] [float] NOT NULL,
	[vkp_twl_] [float] NOT NULL,
	[marge___] [float] NOT NULL,
	[intrn___] [float] NOT NULL,
	[loo_____] [float] NOT NULL,
	[mac_____] [float] NOT NULL,
	[ovh_____] [float] NOT NULL,
	[papie___] [float] NOT NULL,
	[grdst___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[min___tw] [float] NOT NULL,
	[reken2__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolomvkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp__min] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[gross_margin_m2] [float] NOT NULL,
	[gross_margin] [float] NOT NULL,
	[gross_margin_pct] [float] NOT NULL,
 CONSTRAINT [prykodi1] PRIMARY KEY CLUSTERED 
(
	[pry__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__ratio1__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__ratio1__]  DEFAULT ((0)) FOR [ratio1__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__ratio2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__ratio2__]  DEFAULT ((0)) FOR [ratio2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__tw_druk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__tw_druk_]  DEFAULT ((0)) FOR [tw_druk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__dek_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__dek_tw__]  DEFAULT ((0)) FOR [dek_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__vkp_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__vkp_tw__]  DEFAULT ((0)) FOR [vkp_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__vkpakp__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__vkpakp__]  DEFAULT ((0)) FOR [vkpakp__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__vkppap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__vkppap__]  DEFAULT ((0)) FOR [vkppap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__vkp_twl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__vkp_twl_]  DEFAULT ((0)) FOR [vkp_twl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__marge___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__marge___]  DEFAULT ((0)) FOR [marge___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__intrn___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__intrn___]  DEFAULT ((0)) FOR [intrn___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__loo_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__loo_____]  DEFAULT ((0)) FOR [loo_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__mac_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__mac_____]  DEFAULT ((0)) FOR [mac_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__ovh_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__ovh_____]  DEFAULT ((0)) FOR [ovh_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__papie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__papie___]  DEFAULT ((0)) FOR [papie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__grdst___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__grdst___]  DEFAULT ((0)) FOR [grdst___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__min___tw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__min___tw]  DEFAULT ((0)) FOR [min___tw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__reken2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__reken2__]  DEFAULT ('') FOR [reken2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__kolomvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__kolomvkp]  DEFAULT ('') FOR [kolomvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__vkp__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__vkp__min]  DEFAULT ('') FOR [vkp__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__gross_margin_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__gross_margin_m2]  DEFAULT ((0)) FOR [gross_margin_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__gross_margin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__gross_margin]  DEFAULT ((0)) FOR [gross_margin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykod__gross_margin_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykod__] ADD  CONSTRAINT [DF_prykod__gross_margin_pct]  DEFAULT ((0)) FOR [gross_margin_pct]
END

