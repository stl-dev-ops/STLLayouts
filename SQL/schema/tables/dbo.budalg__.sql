SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budalg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budalg__](
	[buda_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[buds_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kjaar___] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorzien] [float] NOT NULL,
	[reeel___] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budalgi1] PRIMARY KEY CLUSTERED 
(
	[buda_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[budalg__]') AND name = N'budalgi2')
CREATE NONCLUSTERED INDEX [budalgi2] ON [dbo].[budalg__]
(
	[kjaar___] ASC,
	[maand___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__buda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__buda_ref]  DEFAULT ('') FOR [buda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__buds_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__buds_ref]  DEFAULT ('') FOR [buds_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__kjaar___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__kjaar___]  DEFAULT (datepart(year,CONVERT([date],getdate(),(112)))) FOR [kjaar___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__maand___]  DEFAULT ('01') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__ord_begl]  DEFAULT ('') FOR [ord_begl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__voorzien]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__voorzien]  DEFAULT ((0)) FOR [voorzien]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budalg__reeel___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budalg__] ADD  CONSTRAINT [DF_budalg__reeel___]  DEFAULT ((0)) FOR [reeel___]
END

