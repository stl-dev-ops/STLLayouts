SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autlo3__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autlo3__](
	[aut_vrb1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vrb1] [int] NOT NULL,
	[aut_ordk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ordk] [int] NOT NULL,
	[aut_vdvk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vdvk] [int] NOT NULL,
	[aut_prft] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_prft] [int] NOT NULL,
	[aut_ikzp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ikzp] [int] NOT NULL,
	[aut_orom] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_orom] [int] NOT NULL,
	[aut_graf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_graf] [int] NOT NULL,
	[aut_boww] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_boww] [int] NOT NULL,
	[aut_tfks] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_tfks] [int] NOT NULL,
	[aut_oaaf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_oaaf] [int] NOT NULL,
	[aut_trfp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_trfp] [int] NOT NULL,
	[aut_ikz_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ikz_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autlo3i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_vrb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_vrb1]  DEFAULT ('') FOR [aut_vrb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_vrb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_vrb1]  DEFAULT ((0)) FOR [vlg_vrb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_ordk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_ordk]  DEFAULT ('') FOR [aut_ordk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_ordk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_ordk]  DEFAULT ((0)) FOR [vlg_ordk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_vdvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_vdvk]  DEFAULT ('') FOR [aut_vdvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_vdvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_vdvk]  DEFAULT ((0)) FOR [vlg_vdvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_prft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_prft]  DEFAULT ('') FOR [aut_prft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_prft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_prft]  DEFAULT ((0)) FOR [vlg_prft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_ikzp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_ikzp]  DEFAULT ('') FOR [aut_ikzp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_ikzp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_ikzp]  DEFAULT ((0)) FOR [vlg_ikzp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_orom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_orom]  DEFAULT ('') FOR [aut_orom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_orom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_orom]  DEFAULT ((0)) FOR [vlg_orom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_graf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_graf]  DEFAULT ('') FOR [aut_graf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_graf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_graf]  DEFAULT ((0)) FOR [vlg_graf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_boww]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_boww]  DEFAULT ('') FOR [aut_boww]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_boww]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_boww]  DEFAULT ((0)) FOR [vlg_boww]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_tfks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_tfks]  DEFAULT ('') FOR [aut_tfks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_tfks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_tfks]  DEFAULT ((0)) FOR [vlg_tfks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_oaaf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_oaaf]  DEFAULT ('') FOR [aut_oaaf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_oaaf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_oaaf]  DEFAULT ((0)) FOR [vlg_oaaf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_trfp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_trfp]  DEFAULT ('') FOR [aut_trfp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_trfp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_trfp]  DEFAULT ((0)) FOR [vlg_trfp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__aut_ikz_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__aut_ikz_]  DEFAULT ('') FOR [aut_ikz_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo3__vlg_ikz_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo3__] ADD  CONSTRAINT [DF_autlo3__vlg_ikz_]  DEFAULT ((0)) FOR [vlg_ikz_]
END

