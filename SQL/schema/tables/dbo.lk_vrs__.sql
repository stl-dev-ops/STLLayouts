SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lk_vrs__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lk_vrs__](
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__rpn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_1] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_2] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_3] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_4] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_5] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[lk_vrs_6] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [lk_txti1] PRIMARY KEY CLUSTERED 
(
	[txt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__txt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__txt__rpn]  DEFAULT ('') FOR [txt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_1]  DEFAULT ('') FOR [lk_vrs_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_2]  DEFAULT ('') FOR [lk_vrs_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_3]  DEFAULT ('') FOR [lk_vrs_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_4]  DEFAULT ('') FOR [lk_vrs_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_5]  DEFAULT ('') FOR [lk_vrs_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lk_vrs__lk_vrs_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lk_vrs__] ADD  CONSTRAINT [DF_lk_vrs__lk_vrs_6]  DEFAULT ('') FOR [lk_vrs_6]
END

