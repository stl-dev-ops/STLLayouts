SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_Version]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_Version](
	[stlST_Version] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_Version_stlST_Version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_Version] ADD  CONSTRAINT [DF_stlST_Version_stlST_Version]  DEFAULT ('') FOR [stlST_Version]
END

