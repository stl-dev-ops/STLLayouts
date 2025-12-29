SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dosbas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dosbas__](
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos_oms_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afdeling] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gemeente] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[email___] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[hand_reg] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vat__num] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokgrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpgrref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokoaref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpoaref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kal1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kal2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gs1_prfx] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[papwa__t] [float] NOT NULL,
	[papwa_tn] [float] NOT NULL,
	[srt___ap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_akp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[stockorder_kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[stockorder_knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [dosbas_1] PRIMARY KEY CLUSTERED 
(
	[dos__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__dos_oms_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__dos_oms_]  DEFAULT ('') FOR [dos_oms_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__taal_ref]  DEFAULT ('1') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__afdeling]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__afdeling]  DEFAULT ('') FOR [afdeling]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__gemeente]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__gemeente]  DEFAULT ('') FOR [gemeente]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__email___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__email___]  DEFAULT ('') FOR [email___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__hand_reg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__hand_reg]  DEFAULT ('') FOR [hand_reg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__vat__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__vat__num]  DEFAULT ('') FOR [vat__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__btw__ref]  DEFAULT ('') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__lokgrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__lokgrref]  DEFAULT ('') FOR [lokgrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__knpgrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__knpgrref]  DEFAULT ('') FOR [knpgrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__lokoaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__lokoaref]  DEFAULT ('') FOR [lokoaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__knpoaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__knpoaref]  DEFAULT ('') FOR [knpoaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__kal1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__kal1_ref]  DEFAULT ('000000') FOR [kal1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__kal2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__kal2_ref]  DEFAULT ('000000') FOR [kal2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__gs1_prfx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__gs1_prfx]  DEFAULT ('') FOR [gs1_prfx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__papwa__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__papwa__t]  DEFAULT ((0)) FOR [papwa__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__papwa_tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__papwa_tn]  DEFAULT ((0)) FOR [papwa_tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__srt___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__srt___ap]  DEFAULT ('0') FOR [srt___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dosbas__dgbk_akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dosbas__] ADD  CONSTRAINT [DF_dosbas__dgbk_akp]  DEFAULT ('') FOR [dgbk_akp]
END

