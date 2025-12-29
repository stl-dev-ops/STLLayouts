SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lulusr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lulusr__](
	[layoutsp] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutdl] [int] NOT NULL,
	[usrnbr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prn1_rpn] [nvarchar](220) COLLATE Latin1_General_CI_AS NOT NULL,
	[prn2_rpn] [nvarchar](220) COLLATE Latin1_General_CI_AS NOT NULL,
	[logos___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [lulusri1] PRIMARY KEY CLUSTERED 
(
	[layoutsp] ASC,
	[layoutnr] ASC,
	[layoutdl] ASC,
	[usrnbr__] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__layoutsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__layoutsp]  DEFAULT ('') FOR [layoutsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__layoutdl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__layoutdl]  DEFAULT ((0)) FOR [layoutdl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__usrnbr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__usrnbr__]  DEFAULT ('') FOR [usrnbr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__prn1_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__prn1_rpn]  DEFAULT ('') FOR [prn1_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__prn2_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__prn2_rpn]  DEFAULT ('') FOR [prn2_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lulusr__logos___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lulusr__] ADD  CONSTRAINT [DF_lulusr__logos___]  DEFAULT ('') FOR [logos___]
END

