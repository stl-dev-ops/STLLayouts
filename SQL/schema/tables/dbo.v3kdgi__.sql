SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3kdgi__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3kdgi__](
	[dg___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgi__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgi__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toren___] [int] NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpc] [float] NOT NULL,
	[inkvrbp2] [float] NOT NULL,
	[plaat1nr] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[plaat2nr] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[wisselpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wisselp2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels1] [int] NOT NULL,
	[wissels2] [int] NOT NULL,
	[inkt_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkt__gr] [float] NOT NULL,
	[inktingr] [float] NOT NULL,
	[inktvast] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3kdgii1] PRIMARY KEY CLUSTERED 
(
	[dg___ref] ASC,
	[dgi__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdgi__]') AND name = N'v3kdgii2')
CREATE NONCLUSTERED INDEX [v3kdgii2] ON [dbo].[v3kdgi__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdgi__]') AND name = N'v3kdgii3')
CREATE NONCLUSTERED INDEX [v3kdgii3] ON [dbo].[v3kdgi__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__dgi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__dgi__ref]  DEFAULT ('') FOR [dgi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__dgi__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__dgi__vnr]  DEFAULT ('') FOR [dgi__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__r_of_v__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__r_of_v__]  DEFAULT ('') FOR [r_of_v__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__toren___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__toren___]  DEFAULT ((0)) FOR [toren___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inkvrbpc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inkvrbpc]  DEFAULT ((0)) FOR [inkvrbpc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inkvrbp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inkvrbp2]  DEFAULT ((0)) FOR [inkvrbp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__plaat1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__plaat1nr]  DEFAULT ('') FOR [plaat1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__plaat2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__plaat2nr]  DEFAULT ('') FOR [plaat2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__wisselpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__wisselpl]  DEFAULT ('') FOR [wisselpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__wisselp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__wisselp2]  DEFAULT ('') FOR [wisselp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__wissels1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__wissels1]  DEFAULT ((0)) FOR [wissels1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__wissels2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__wissels2]  DEFAULT ((0)) FOR [wissels2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inkt_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inkt_tyd]  DEFAULT ('') FOR [inkt_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inkt__gr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inkt__gr]  DEFAULT ((0)) FOR [inkt__gr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inktingr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inktingr]  DEFAULT ((0)) FOR [inktingr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdgi__inktvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdgi__] ADD  CONSTRAINT [DF_v3kdgi__inktvast]  DEFAULT ((0)) FOR [inktvast]
END

