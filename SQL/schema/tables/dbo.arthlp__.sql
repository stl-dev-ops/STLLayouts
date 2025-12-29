SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_rpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_oms] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tool_lengte__] [float] NOT NULL,
	[tool_breedte_] [float] NOT NULL,
	[ggdr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynreflv] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[dat__bin] [date] NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktief__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs_bm] [float] NOT NULL,
	[vrrd_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tellermx] [int] NOT NULL,
	[aantvrrd] [int] NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref_tool] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_customer] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_designer] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_substrate] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[project_ap] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [arthlpi1] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthlp__]') AND name = N'arthlpi2')
CREATE NONCLUSTERED INDEX [arthlpi2] ON [dbo].[arthlp__]
(
	[vrrd_typ] ASC,
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthlp__]') AND name = N'arthlpi3')
CREATE NONCLUSTERED INDEX [arthlpi3] ON [dbo].[arthlp__]
(
	[cde___ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__arth_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__arth_srt]  DEFAULT ('') FOR [arth_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__arth_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__arth_rpn]  DEFAULT ('') FOR [arth_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__arth_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__arth_oms]  DEFAULT ('') FOR [arth_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tool_lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tool_lengte__]  DEFAULT ((0)) FOR [tool_lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tool_breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tool_breedte_]  DEFAULT ((0)) FOR [tool_breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__ggdr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__ggdr_ref]  DEFAULT ('') FOR [ggdr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__stat_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__stat_ref]  DEFAULT ('') FOR [stat_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__zynreflv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__zynreflv]  DEFAULT ('') FOR [zynreflv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__dat__bin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__dat__bin]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [dat__bin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__aktief__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__aktief__]  DEFAULT ('') FOR [aktief__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__prijs_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__prijs_bm]  DEFAULT ((0)) FOR [prijs_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__vrrd_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__vrrd_typ]  DEFAULT ('1') FOR [vrrd_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tellermx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tellermx]  DEFAULT ((0)) FOR [tellermx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__aantvrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__aantvrrd]  DEFAULT ((0)) FOR [aantvrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__ord__ref_tool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__ord__ref_tool]  DEFAULT ('') FOR [ord__ref_tool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__cad_customer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__cad_customer]  DEFAULT ('') FOR [cad_customer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__cad_designer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__cad_designer]  DEFAULT ('') FOR [cad_designer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__cad_substrate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__cad_substrate]  DEFAULT ('') FOR [cad_substrate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp__project_ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp__] ADD  CONSTRAINT [DF_arthlp__project_ap]  DEFAULT ('') FOR [project_ap]
END

