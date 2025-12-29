SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpdg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpdg__](
	[drkprref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkdgref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o10] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_of_o12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__6] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__7] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__8] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__9] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur_10] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur_11] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur_12] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omkeer__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpdgi1] PRIMARY KEY CLUSTERED 
(
	[drkprref] ASC,
	[drkdgref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__drkprref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__drkprref]  DEFAULT ('') FOR [drkprref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__drkdgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__drkdgref]  DEFAULT ('') FOR [drkdgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_1]  DEFAULT ('5') FOR [b_of_o_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_2]  DEFAULT ('5') FOR [b_of_o_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_3]  DEFAULT ('5') FOR [b_of_o_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_4]  DEFAULT ('5') FOR [b_of_o_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_5]  DEFAULT ('5') FOR [b_of_o_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_6]  DEFAULT ('5') FOR [b_of_o_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_7]  DEFAULT ('5') FOR [b_of_o_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_8]  DEFAULT ('5') FOR [b_of_o_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o_9]  DEFAULT ('5') FOR [b_of_o_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o10]  DEFAULT ('5') FOR [b_of_o10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o11]  DEFAULT ('5') FOR [b_of_o11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__b_of_o12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__b_of_o12]  DEFAULT ('5') FOR [b_of_o12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__1]  DEFAULT ('00') FOR [kleur__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__2]  DEFAULT ('00') FOR [kleur__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__3]  DEFAULT ('00') FOR [kleur__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__4]  DEFAULT ('00') FOR [kleur__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__5]  DEFAULT ('00') FOR [kleur__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__6]  DEFAULT ('00') FOR [kleur__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__7]  DEFAULT ('00') FOR [kleur__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__8]  DEFAULT ('00') FOR [kleur__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur__9]  DEFAULT ('00') FOR [kleur__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur_10]  DEFAULT ('00') FOR [kleur_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur_11]  DEFAULT ('00') FOR [kleur_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__kleur_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__kleur_12]  DEFAULT ('00') FOR [kleur_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpdg__omkeer__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpdg__] ADD  CONSTRAINT [DF_drkpdg__omkeer__]  DEFAULT ('N') FOR [omkeer__]
END

