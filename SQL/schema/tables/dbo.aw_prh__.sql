SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aw_prh__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aw_prh__](
	[awpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[keus_ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [aw_prhi1] PRIMARY KEY CLUSTERED 
(
	[awpr_ref] ASC,
	[awha_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prh__awpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prh__] ADD  CONSTRAINT [DF_aw_prh__awpr_ref]  DEFAULT ('') FOR [awpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prh__awha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prh__] ADD  CONSTRAINT [DF_aw_prh__awha_ref]  DEFAULT ('') FOR [awha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prh__awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prh__] ADD  CONSTRAINT [DF_aw_prh__awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prh__keus_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prh__] ADD  CONSTRAINT [DF_aw_prh__keus_ant]  DEFAULT ('') FOR [keus_ant]
END

