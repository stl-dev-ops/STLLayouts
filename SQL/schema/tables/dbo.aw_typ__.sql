SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aw_typ__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aw_typ__](
	[awtypref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awtypoms] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[awtypval] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [aw_typi0] PRIMARY KEY CLUSTERED 
(
	[awtypref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_typ__awtypref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_typ__] ADD  CONSTRAINT [DF_aw_typ__awtypref]  DEFAULT ('') FOR [awtypref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_typ__awtypoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_typ__] ADD  CONSTRAINT [DF_aw_typ__awtypoms]  DEFAULT ('') FOR [awtypoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_typ__awtypval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_typ__] ADD  CONSTRAINT [DF_aw_typ__awtypval]  DEFAULT ((0)) FOR [awtypval]
END

