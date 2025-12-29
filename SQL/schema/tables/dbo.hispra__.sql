SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hispra__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hispra__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_afsl] [date] NOT NULL,
	[kom_afsl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[fpri__vm] [float] NOT NULL,
	[fpri__bm] [float] NOT NULL,
	[ftot__vm] [float] NOT NULL,
	[ftot__bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisprai0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__dat_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__dat_afsl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__levr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__levr_ref]  DEFAULT ('') FOR [levr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__fpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__fpri__vm]  DEFAULT ((0)) FOR [fpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__fpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__fpri__bm]  DEFAULT ((0)) FOR [fpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__ftot__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__ftot__vm]  DEFAULT ((0)) FOR [ftot__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispra__ftot__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispra__] ADD  CONSTRAINT [DF_hispra__ftot__bm]  DEFAULT ((0)) FOR [ftot__bm]
END

