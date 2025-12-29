SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artkla__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artkla__](
	[artklref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pct__kst] [float] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[min_stoc] [float] NOT NULL,
	[max_stoc] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [artklai1] PRIMARY KEY CLUSTERED 
(
	[artklref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artkla__]') AND name = N'artklai2')
CREATE NONCLUSTERED INDEX [artklai2] ON [dbo].[artkla__]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artkla__]') AND name = N'artklai3')
CREATE UNIQUE NONCLUSTERED INDEX [artklai3] ON [dbo].[artkla__]
(
	[art__ref] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__artklref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__artklref]  DEFAULT ('') FOR [artklref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__pct__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__pct__kst]  DEFAULT ((0)) FOR [pct__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__min_stoc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__min_stoc]  DEFAULT ((0)) FOR [min_stoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artkla__max_stoc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artkla__] ADD  CONSTRAINT [DF_artkla__max_stoc]  DEFAULT ((0)) FOR [max_stoc]
END

