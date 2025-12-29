SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[offmdl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[offmdl__](
	[omd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omdl_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omdl_vlg] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd__srt] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[concat__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tooncond] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[blanks_b] [int] NOT NULL,
	[blanks_a] [int] NOT NULL,
	[indent_1] [int] NOT NULL,
	[indent_2] [int] NOT NULL,
	[title_11] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_12] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_13] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_14] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_15] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_16] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_17] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_18] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_19] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_21] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_22] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_23] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_24] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_25] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_26] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_27] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_28] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_29] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [omdl_id1] PRIMARY KEY CLUSTERED 
(
	[omd__ref] ASC,
	[omdl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__omd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__omd__ref]  DEFAULT ('') FOR [omd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__omdl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__omdl_ref]  DEFAULT ('') FOR [omdl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__omdl_vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__omdl_vlg]  DEFAULT ('') FOR [omdl_vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__omd__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__omd__rpn]  DEFAULT ('') FOR [omd__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__omd__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__omd__srt]  DEFAULT ('') FOR [omd__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__concat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__concat__]  DEFAULT ('') FOR [concat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__tooncond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__tooncond]  DEFAULT ('') FOR [tooncond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__blanks_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__blanks_b]  DEFAULT ((0)) FOR [blanks_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__blanks_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__blanks_a]  DEFAULT ((0)) FOR [blanks_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__indent_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__indent_1]  DEFAULT ((0)) FOR [indent_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__indent_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__indent_2]  DEFAULT ((0)) FOR [indent_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_11]  DEFAULT ('') FOR [title_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_12]  DEFAULT ('') FOR [title_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_13]  DEFAULT ('') FOR [title_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_14]  DEFAULT ('') FOR [title_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_15]  DEFAULT ('') FOR [title_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_16]  DEFAULT ('') FOR [title_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_17]  DEFAULT ('') FOR [title_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_18]  DEFAULT ('') FOR [title_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_19]  DEFAULT ('') FOR [title_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_21]  DEFAULT ('') FOR [title_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_22]  DEFAULT ('') FOR [title_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_23]  DEFAULT ('') FOR [title_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_24]  DEFAULT ('') FOR [title_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_25]  DEFAULT ('') FOR [title_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_26]  DEFAULT ('') FOR [title_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_27]  DEFAULT ('') FOR [title_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_28]  DEFAULT ('') FOR [title_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_offmdl__title_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[offmdl__] ADD  CONSTRAINT [DF_offmdl__title_29]  DEFAULT ('') FOR [title_29]
END

