SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drksmw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drksmw__](
	[smw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[wit___x1] [int] NOT NULL,
	[wit___x2] [int] NOT NULL,
	[wit___x3] [int] NOT NULL,
	[wit___x4] [int] NOT NULL,
	[wit___y1] [int] NOT NULL,
	[wit___y2] [int] NOT NULL,
	[wit___y3] [int] NOT NULL,
	[wit___y4] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drksmwi1] PRIMARY KEY CLUSTERED 
(
	[smw__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__smw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__smw__ref]  DEFAULT ('') FOR [smw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__smw__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__smw__rpn]  DEFAULT ('') FOR [smw__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__smw__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__smw__oms]  DEFAULT ('') FOR [smw__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___x1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___x1]  DEFAULT ((0)) FOR [wit___x1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___x2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___x2]  DEFAULT ((0)) FOR [wit___x2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___x3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___x3]  DEFAULT ((0)) FOR [wit___x3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___x4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___x4]  DEFAULT ((0)) FOR [wit___x4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___y1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___y1]  DEFAULT ((0)) FOR [wit___y1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___y2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___y2]  DEFAULT ((0)) FOR [wit___y2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___y3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___y3]  DEFAULT ((0)) FOR [wit___y3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drksmw__wit___y4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drksmw__] ADD  CONSTRAINT [DF_drksmw__wit___y4]  DEFAULT ((0)) FOR [wit___y4]
END

