SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kdvi__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kdvi__](
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrmi_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plaat_nr] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpc] [float] NOT NULL,
	[plaattst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kdvii1] PRIMARY KEY CLUSTERED 
(
	[vrm__ref] ASC,
	[vrmi_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kdvi__]') AND name = N'v2kdvii2')
CREATE NONCLUSTERED INDEX [v2kdvii2] ON [dbo].[v2kdvi__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kdvi__]') AND name = N'v2kdvii3')
CREATE NONCLUSTERED INDEX [v2kdvii3] ON [dbo].[v2kdvi__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__vrmi_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__vrmi_ref]  DEFAULT ('') FOR [vrmi_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__plaat_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__plaat_nr]  DEFAULT ('') FOR [plaat_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__inkvrbpc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__inkvrbpc]  DEFAULT ((0)) FOR [inkvrbpc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__plaattst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__plaattst]  DEFAULT ('') FOR [plaattst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvi__wissels_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvi__] ADD  CONSTRAINT [DF_v2kdvi__wissels_]  DEFAULT ((0)) FOR [wissels_]
END

