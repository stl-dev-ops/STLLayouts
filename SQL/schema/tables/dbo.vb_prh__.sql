SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vb_prh__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vb_prh__](
	[vbpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[keus_ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vb_prhi1] PRIMARY KEY CLUSTERED 
(
	[vbpr_ref] ASC,
	[vbha_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prh__vbpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prh__] ADD  CONSTRAINT [DF_vb_prh__vbpr_ref]  DEFAULT ('') FOR [vbpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prh__vbha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prh__] ADD  CONSTRAINT [DF_vb_prh__vbha_ref]  DEFAULT ('') FOR [vbha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prh__vbst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prh__] ADD  CONSTRAINT [DF_vb_prh__vbst_ref]  DEFAULT ('') FOR [vbst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prh__keus_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prh__] ADD  CONSTRAINT [DF_vb_prh__keus_ant]  DEFAULT ('') FOR [keus_ant]
END

