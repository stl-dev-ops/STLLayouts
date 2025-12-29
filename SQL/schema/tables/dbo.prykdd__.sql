SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prykdd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prykdd__](
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pryd_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__van] [float] NOT NULL,
	[ratio1__] [float] NOT NULL,
	[ratio2__] [float] NOT NULL,
	[tw_druk_] [float] NOT NULL,
	[dek_tw__] [float] NOT NULL,
	[vkp_tw__] [float] NOT NULL,
	[vkpakp__] [float] NOT NULL,
	[vkppap__] [float] NOT NULL,
	[vkp_twl_] [float] NOT NULL,
	[marge___] [float] NOT NULL,
	[loo_____] [float] NOT NULL,
	[mac_____] [float] NOT NULL,
	[ovh_____] [float] NOT NULL,
	[papie___] [float] NOT NULL,
	[grdst___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[gross_margin_m2] [float] NOT NULL,
	[gross_margin] [float] NOT NULL,
	[gross_margin_pct] [float] NOT NULL,
 CONSTRAINT [prykddi0] PRIMARY KEY CLUSTERED 
(
	[pry__ref] ASC,
	[pryd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__pryd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__pryd_ref]  DEFAULT ('') FOR [pryd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__kst__van]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__kst__van]  DEFAULT ((0)) FOR [kst__van]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__ratio1__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__ratio1__]  DEFAULT ((0)) FOR [ratio1__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__ratio2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__ratio2__]  DEFAULT ((0)) FOR [ratio2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__tw_druk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__tw_druk_]  DEFAULT ((0)) FOR [tw_druk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__dek_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__dek_tw__]  DEFAULT ((0)) FOR [dek_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__vkp_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__vkp_tw__]  DEFAULT ((0)) FOR [vkp_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__vkpakp__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__vkpakp__]  DEFAULT ((0)) FOR [vkpakp__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__vkppap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__vkppap__]  DEFAULT ((0)) FOR [vkppap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__vkp_twl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__vkp_twl_]  DEFAULT ((0)) FOR [vkp_twl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__marge___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__marge___]  DEFAULT ((0)) FOR [marge___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__loo_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__loo_____]  DEFAULT ((0)) FOR [loo_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__mac_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__mac_____]  DEFAULT ((0)) FOR [mac_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__ovh_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__ovh_____]  DEFAULT ((0)) FOR [ovh_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__papie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__papie___]  DEFAULT ((0)) FOR [papie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__grdst___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__grdst___]  DEFAULT ((0)) FOR [grdst___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__gross_margin_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__gross_margin_m2]  DEFAULT ((0)) FOR [gross_margin_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__gross_margin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__gross_margin]  DEFAULT ((0)) FOR [gross_margin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykdd__gross_margin_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykdd__] ADD  CONSTRAINT [DF_prykdd__gross_margin_pct]  DEFAULT ((0)) FOR [gross_margin_pct]
END

