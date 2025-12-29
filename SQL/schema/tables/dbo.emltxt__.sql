SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emltxt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emltxt__](
	[eml__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_html] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__srt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__dft] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_sub9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_form] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [emltxt_1] PRIMARY KEY CLUSTERED 
(
	[eml__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml__ref]  DEFAULT ('') FOR [eml__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_html]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_html]  DEFAULT ('') FOR [eml_html]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml__srt]  DEFAULT ('') FOR [eml__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml__dft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml__dft]  DEFAULT ('') FOR [eml__dft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml__oms]  DEFAULT ('') FOR [eml__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub1]  DEFAULT ('') FOR [eml_sub1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub2]  DEFAULT ('') FOR [eml_sub2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub3]  DEFAULT ('') FOR [eml_sub3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub4]  DEFAULT ('') FOR [eml_sub4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub5]  DEFAULT ('') FOR [eml_sub5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub6]  DEFAULT ('') FOR [eml_sub6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub7]  DEFAULT ('') FOR [eml_sub7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub8]  DEFAULT ('') FOR [eml_sub8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_sub9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_sub9]  DEFAULT ('') FOR [eml_sub9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emltxt__eml_form]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emltxt__] ADD  CONSTRAINT [DF_emltxt__eml_form]  DEFAULT ('') FOR [eml_form]
END

