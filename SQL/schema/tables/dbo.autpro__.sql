SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autpro__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autpro__](
	[aut__ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__ord] [int] NOT NULL,
	[vlg_wijz] [int] NOT NULL,
	[aut_akrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_akrd] [int] NOT NULL,
	[aut_wkrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_wkrd] [int] NOT NULL,
	[aut_resg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_resg] [int] NOT NULL,
	[aut_lvbn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_lvbn] [int] NOT NULL,
	[aut_ordg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ordg] [int] NOT NULL,
	[aut_ilvb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ilvb] [int] NOT NULL,
	[aut_kntr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_kntr] [int] NOT NULL,
	[aut_stpr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_stpr] [int] NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pldv] [int] NOT NULL,
	[aut_vlbn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vlbn] [int] NOT NULL,
	[aut_mnlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mnlg] [int] NOT NULL,
	[aut_lbnd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_lbnd] [int] NOT NULL,
	[aut_klmg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_klmg] [int] NOT NULL,
	[aut_kbew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_kbew] [int] NOT NULL,
	[aut_fkoe] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fkoe] [int] NOT NULL,
	[destinat] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[file____] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[wbnalias] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autproi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut__ord]  DEFAULT ('') FOR [aut__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg__ord]  DEFAULT ((0)) FOR [vlg__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_wijz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_wijz]  DEFAULT ((0)) FOR [vlg_wijz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_akrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_akrd]  DEFAULT ('') FOR [aut_akrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_akrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_akrd]  DEFAULT ((0)) FOR [vlg_akrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_wkrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_wkrd]  DEFAULT ('') FOR [aut_wkrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_wkrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_wkrd]  DEFAULT ((0)) FOR [vlg_wkrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_resg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_resg]  DEFAULT ('') FOR [aut_resg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_resg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_resg]  DEFAULT ((0)) FOR [vlg_resg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_lvbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_lvbn]  DEFAULT ('') FOR [aut_lvbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_lvbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_lvbn]  DEFAULT ((0)) FOR [vlg_lvbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_ordg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_ordg]  DEFAULT ('') FOR [aut_ordg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_ordg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_ordg]  DEFAULT ((0)) FOR [vlg_ordg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_ilvb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_ilvb]  DEFAULT ('') FOR [aut_ilvb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_ilvb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_ilvb]  DEFAULT ((0)) FOR [vlg_ilvb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_kntr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_kntr]  DEFAULT ('') FOR [aut_kntr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_kntr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_kntr]  DEFAULT ((0)) FOR [vlg_kntr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_stpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_stpr]  DEFAULT ('') FOR [aut_stpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_stpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_stpr]  DEFAULT ((0)) FOR [vlg_stpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_pldv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_pldv]  DEFAULT ((0)) FOR [vlg_pldv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_vlbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_vlbn]  DEFAULT ('') FOR [aut_vlbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_vlbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_vlbn]  DEFAULT ((0)) FOR [vlg_vlbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_mnlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_mnlg]  DEFAULT ('') FOR [aut_mnlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_mnlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_mnlg]  DEFAULT ((0)) FOR [vlg_mnlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_lbnd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_lbnd]  DEFAULT ('') FOR [aut_lbnd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_lbnd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_lbnd]  DEFAULT ((0)) FOR [vlg_lbnd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_klmg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_klmg]  DEFAULT ('') FOR [aut_klmg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_klmg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_klmg]  DEFAULT ((0)) FOR [vlg_klmg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_kbew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_kbew]  DEFAULT ('') FOR [aut_kbew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_kbew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_kbew]  DEFAULT ((0)) FOR [vlg_kbew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__aut_fkoe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__aut_fkoe]  DEFAULT ('') FOR [aut_fkoe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__vlg_fkoe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__vlg_fkoe]  DEFAULT ((0)) FOR [vlg_fkoe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__destinat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__destinat]  DEFAULT ('') FOR [destinat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__file____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__file____]  DEFAULT ('') FOR [file____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autpro__wbnalias]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autpro__] ADD  CONSTRAINT [DF_autpro__wbnalias]  DEFAULT ('') FOR [wbnalias]
END

