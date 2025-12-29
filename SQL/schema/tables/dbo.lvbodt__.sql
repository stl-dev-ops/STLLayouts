SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lvbodt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lvbodt__](
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[barcode1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[barcode2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [lvbodti2] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[lvbodt__]') AND name = N'lvbodti0')
CREATE NONCLUSTERED INDEX [lvbodti0] ON [dbo].[lvbodt__]
(
	[lbn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[lvbodt__]') AND name = N'lvbodti1')
CREATE NONCLUSTERED INDEX [lvbodti1] ON [dbo].[lvbodt__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__barcode1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__barcode1]  DEFAULT ('') FOR [barcode1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__barcode2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__barcode2]  DEFAULT ('') FOR [barcode2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lvbodt__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lvbodt__] ADD  CONSTRAINT [DF_lvbodt__user____]  DEFAULT ('') FOR [user____]
END

