SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[werknm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[werknm__](
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_vnaam] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_afdel] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_straa] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gsm_____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[emailpwn] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel__ice] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_gebo] [date] NOT NULL,
	[indienst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_idns] [date] NOT NULL,
	[dat_udns] [date] NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chef____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_funkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[funktie_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_point] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_plan_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenmerk_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_loon_] [float] NOT NULL,
	[coeff___] [float] NOT NULL,
	[salaris_] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ovup_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_komm1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_komm2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[jmf___id] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[supervisor_code] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wn_id1__] PRIMARY KEY CLUSTERED 
(
	[wn___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[werknm__]') AND name = N'wn_id2__')
CREATE UNIQUE NONCLUSTERED INDEX [wn_id2__] ON [dbo].[werknm__]
(
	[wn___rpn] ASC,
	[wn___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[werknm__]') AND name = N'wn_id3__')
CREATE NONCLUSTERED INDEX [wn_id3__] ON [dbo].[werknm__]
(
	[supervisor_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[werknm__]') AND name = N'wn_id4__')
CREATE NONCLUSTERED INDEX [wn_id4__] ON [dbo].[werknm__]
(
	[jmf___id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn___rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn___rpn]  DEFAULT ('') FOR [wn___rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_naam_]  DEFAULT ('') FOR [wn_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_vnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_vnaam]  DEFAULT ('') FOR [wn_vnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_afdel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_afdel]  DEFAULT ('') FOR [wn_afdel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_straa]  DEFAULT ('') FOR [wn_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__gsm_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__gsm_____]  DEFAULT ('') FOR [gsm_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__emailpwn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__emailpwn]  DEFAULT ('') FOR [emailpwn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__tel__ice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__tel__ice]  DEFAULT ('') FOR [tel__ice]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__dat_gebo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__dat_gebo]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_gebo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__indienst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__indienst]  DEFAULT ('Y') FOR [indienst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__dat_idns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__dat_idns]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_idns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__dat_udns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__dat_udns]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_udns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__chef____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__chef____]  DEFAULT ('') FOR [chef____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_funkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_funkt]  DEFAULT ('') FOR [wn_funkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__funktie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__funktie_]  DEFAULT ('') FOR [funktie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_point]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_point]  DEFAULT ('') FOR [wn_point]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_plan_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_plan_]  DEFAULT ('N') FOR [wn_plan_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__kenmerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__kenmerk_]  DEFAULT ('') FOR [kenmerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_loon_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_loon_]  DEFAULT ((0)) FOR [wn_loon_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__coeff___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__coeff___]  DEFAULT ((0)) FOR [coeff___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__salaris_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__salaris_]  DEFAULT ('') FOR [salaris_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__ovup_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__ovup_ref]  DEFAULT ('') FOR [ovup_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_komm1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_komm1]  DEFAULT ('') FOR [wn_komm1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__wn_komm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__wn_komm2]  DEFAULT ('') FOR [wn_komm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__jmf___id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__jmf___id]  DEFAULT ('') FOR [jmf___id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werknm__supervisor_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werknm__] ADD  CONSTRAINT [DF_werknm__supervisor_code]  DEFAULT ('') FOR [supervisor_code]
END

