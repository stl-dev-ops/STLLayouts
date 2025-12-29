SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budsrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budsrt__](
	[buds_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[buds_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_begl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budsrti1] PRIMARY KEY CLUSTERED 
(
	[buds_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__buds_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__buds_ref]  DEFAULT ('') FOR [buds_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__buds_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__buds_oms]  DEFAULT ('') FOR [buds_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__kla__ref]  DEFAULT ('N') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__vrt__ref]  DEFAULT ('N') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__prkl_ref]  DEFAULT ('N') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__klgr_ref]  DEFAULT ('N') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__ktrk_ref]  DEFAULT ('N') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__trn__ref]  DEFAULT ('N') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budsrt__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budsrt__] ADD  CONSTRAINT [DF_budsrt__ord_begl]  DEFAULT ('N') FOR [ord_begl]
END

