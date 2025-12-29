SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drk_dg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drk_dg__](
	[drkprref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorgang] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v10] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omkeer__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkdg_i1] PRIMARY KEY CLUSTERED 
(
	[drkprref] ASC,
	[doorgang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__drkprref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__drkprref]  DEFAULT ('') FOR [drkprref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__doorgang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__doorgang]  DEFAULT ('') FOR [doorgang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_1]  DEFAULT ('') FOR [r_of_v_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_2]  DEFAULT ('') FOR [r_of_v_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_3]  DEFAULT ('') FOR [r_of_v_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_4]  DEFAULT ('') FOR [r_of_v_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_5]  DEFAULT ('') FOR [r_of_v_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_6]  DEFAULT ('') FOR [r_of_v_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_7]  DEFAULT ('') FOR [r_of_v_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_8]  DEFAULT ('') FOR [r_of_v_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v_9]  DEFAULT ('') FOR [r_of_v_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v10]  DEFAULT ('') FOR [r_of_v10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v11]  DEFAULT ('') FOR [r_of_v11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__r_of_v12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__r_of_v12]  DEFAULT ('') FOR [r_of_v12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drk_dg__omkeer__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drk_dg__] ADD  CONSTRAINT [DF_drk_dg__omkeer__]  DEFAULT ('') FOR [omkeer__]
END

