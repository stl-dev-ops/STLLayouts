SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jobtpl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jobtpl__](
	[tpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tpl__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tpl__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tpl_path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jobtpli0] PRIMARY KEY CLUSTERED 
(
	[tpl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jobtpl__tpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jobtpl__] ADD  CONSTRAINT [DF_jobtpl__tpl__ref]  DEFAULT ('') FOR [tpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jobtpl__tpl__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jobtpl__] ADD  CONSTRAINT [DF_jobtpl__tpl__rpn]  DEFAULT ('') FOR [tpl__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jobtpl__tpl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jobtpl__] ADD  CONSTRAINT [DF_jobtpl__tpl__oms]  DEFAULT ('') FOR [tpl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jobtpl__tpl_path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jobtpl__] ADD  CONSTRAINT [DF_jobtpl__tpl_path]  DEFAULT ('') FOR [tpl_path]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jobtpl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jobtpl__] ADD  CONSTRAINT [DF_jobtpl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

