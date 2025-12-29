SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_bsku__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_bsku__](
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___13] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [int] NOT NULL,
	[in_stock] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_bskui0] PRIMARY KEY CLUSTERED 
(
	[zyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bsku__]') AND name = N'w_bskui1')
CREATE NONCLUSTERED INDEX [w_bskui1] ON [dbo].[w_bsku__]
(
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bsku__]') AND name = N'w_bskui2')
CREATE NONCLUSTERED INDEX [w_bskui2] ON [dbo].[w_bsku__]
(
	[pal__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__ean___13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__ean___13]  DEFAULT ('') FOR [ean___13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bsku__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bsku__] ADD  CONSTRAINT [DF_w_bsku__dossier_]  DEFAULT ('') FOR [dossier_]
END

