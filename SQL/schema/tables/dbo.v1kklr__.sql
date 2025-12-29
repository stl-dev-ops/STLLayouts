SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1kklr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1kklr__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[s_of_w__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpc] [int] NOT NULL,
	[wissels_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1kklri0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1kklr__]') AND name = N'v1kklri1')
CREATE NONCLUSTERED INDEX [v1kklri1] ON [dbo].[v1kklr__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1kklr__]') AND name = N'v1kklri2')
CREATE NONCLUSTERED INDEX [v1kklri2] ON [dbo].[v1kklr__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__klr__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__klr__vnr]  DEFAULT ('') FOR [klr__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__ink__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__ink__srt]  DEFAULT ('') FOR [ink__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__s_of_w__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__s_of_w__]  DEFAULT ('') FOR [s_of_w__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__inkvrbpc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__inkvrbpc]  DEFAULT ((0)) FOR [inkvrbpc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kklr__wissels_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kklr__] ADD  CONSTRAINT [DF_v1kklr__wissels_]  DEFAULT ((0)) FOR [wissels_]
END

