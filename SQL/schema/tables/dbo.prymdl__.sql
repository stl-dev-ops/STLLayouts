SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prymdl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prymdl__](
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
	[indent_3] [int] NOT NULL,
	[indent_4] [int] NOT NULL,
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
	[title_31] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_32] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_33] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_34] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_35] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_36] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_37] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_38] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_39] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_41] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_42] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_43] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_44] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_45] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_46] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_47] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_48] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[title_49] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prymdli1] PRIMARY KEY CLUSTERED 
(
	[omd__ref] ASC,
	[omdl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__omd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__omd__ref]  DEFAULT ('') FOR [omd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__omdl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__omdl_ref]  DEFAULT ('') FOR [omdl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__omdl_vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__omdl_vlg]  DEFAULT ('') FOR [omdl_vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__omd__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__omd__rpn]  DEFAULT ('') FOR [omd__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__omd__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__omd__srt]  DEFAULT ('') FOR [omd__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__concat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__concat__]  DEFAULT ('') FOR [concat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__tooncond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__tooncond]  DEFAULT ('') FOR [tooncond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__blanks_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__blanks_b]  DEFAULT ((0)) FOR [blanks_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__blanks_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__blanks_a]  DEFAULT ((0)) FOR [blanks_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__indent_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__indent_1]  DEFAULT ((0)) FOR [indent_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__indent_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__indent_2]  DEFAULT ((0)) FOR [indent_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__indent_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__indent_3]  DEFAULT ((0)) FOR [indent_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__indent_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__indent_4]  DEFAULT ((0)) FOR [indent_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_11]  DEFAULT ('') FOR [title_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_12]  DEFAULT ('') FOR [title_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_13]  DEFAULT ('') FOR [title_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_14]  DEFAULT ('') FOR [title_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_15]  DEFAULT ('') FOR [title_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_16]  DEFAULT ('') FOR [title_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_17]  DEFAULT ('') FOR [title_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_18]  DEFAULT ('') FOR [title_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_19]  DEFAULT ('') FOR [title_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_21]  DEFAULT ('') FOR [title_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_22]  DEFAULT ('') FOR [title_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_23]  DEFAULT ('') FOR [title_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_24]  DEFAULT ('') FOR [title_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_25]  DEFAULT ('') FOR [title_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_26]  DEFAULT ('') FOR [title_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_27]  DEFAULT ('') FOR [title_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_28]  DEFAULT ('') FOR [title_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_29]  DEFAULT ('') FOR [title_29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_31]  DEFAULT ('') FOR [title_31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_32]  DEFAULT ('') FOR [title_32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_33]  DEFAULT ('') FOR [title_33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_34]  DEFAULT ('') FOR [title_34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_35]  DEFAULT ('') FOR [title_35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_36]  DEFAULT ('') FOR [title_36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_37]  DEFAULT ('') FOR [title_37]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_38]  DEFAULT ('') FOR [title_38]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_39]  DEFAULT ('') FOR [title_39]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_41]  DEFAULT ('') FOR [title_41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_42]  DEFAULT ('') FOR [title_42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_43]  DEFAULT ('') FOR [title_43]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_44]  DEFAULT ('') FOR [title_44]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_45]  DEFAULT ('') FOR [title_45]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_46]  DEFAULT ('') FOR [title_46]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_47]  DEFAULT ('') FOR [title_47]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_48]  DEFAULT ('') FOR [title_48]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prymdl__title_49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prymdl__] ADD  CONSTRAINT [DF_prymdl__title_49]  DEFAULT ('') FOR [title_49]
END

