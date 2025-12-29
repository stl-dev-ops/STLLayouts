SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[facmdl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[facmdl__](
	[fmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdl_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmd__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmd__srt] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[blanks_b] [int] NOT NULL,
	[blanks_a] [int] NOT NULL,
	[indent__] [int] NOT NULL,
	[title__1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__6] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__7] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__8] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[title__9] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_6] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_7] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_8] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib_9] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib10] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib11] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib12] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib13] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib14] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib15] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib16] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib17] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib18] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[attrib19] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ascii___] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_fmdl] PRIMARY KEY CLUSTERED 
(
	[fmd__ref] ASC,
	[fmdl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__fmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__fmd__ref]  DEFAULT ('') FOR [fmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__fmdl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__fmdl_ref]  DEFAULT ('') FOR [fmdl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__fmd__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__fmd__rpn]  DEFAULT ('') FOR [fmd__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__fmd__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__fmd__srt]  DEFAULT ('') FOR [fmd__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__blanks_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__blanks_b]  DEFAULT ((0)) FOR [blanks_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__blanks_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__blanks_a]  DEFAULT ((0)) FOR [blanks_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__indent__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__indent__]  DEFAULT ((0)) FOR [indent__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__1]  DEFAULT ('') FOR [title__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__2]  DEFAULT ('') FOR [title__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__3]  DEFAULT ('') FOR [title__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__4]  DEFAULT ('') FOR [title__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__5]  DEFAULT ('') FOR [title__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__6]  DEFAULT ('') FOR [title__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__7]  DEFAULT ('') FOR [title__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__8]  DEFAULT ('') FOR [title__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__title__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__title__9]  DEFAULT ('') FOR [title__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_1]  DEFAULT ('') FOR [attrib_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_2]  DEFAULT ('') FOR [attrib_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_3]  DEFAULT ('') FOR [attrib_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_4]  DEFAULT ('') FOR [attrib_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_5]  DEFAULT ('') FOR [attrib_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_6]  DEFAULT ('') FOR [attrib_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_7]  DEFAULT ('') FOR [attrib_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_8]  DEFAULT ('') FOR [attrib_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib_9]  DEFAULT ('') FOR [attrib_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib10]  DEFAULT ('') FOR [attrib10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib11]  DEFAULT ('') FOR [attrib11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib12]  DEFAULT ('') FOR [attrib12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib13]  DEFAULT ('') FOR [attrib13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib14]  DEFAULT ('') FOR [attrib14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib15]  DEFAULT ('') FOR [attrib15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib16]  DEFAULT ('') FOR [attrib16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib17]  DEFAULT ('') FOR [attrib17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib18]  DEFAULT ('') FOR [attrib18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__attrib19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__attrib19]  DEFAULT ('') FOR [attrib19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_facmdl__ascii___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[facmdl__] ADD  CONSTRAINT [DF_facmdl__ascii___]  DEFAULT ('') FOR [ascii___]
END

