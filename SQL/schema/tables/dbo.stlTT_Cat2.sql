SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTT_Cat2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlTT_Cat2](
	[stlTT_cat2ID] [int] IDENTITY(1,1) NOT NULL,
	[cat2Description] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_Cat2_cat2Description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_Cat2] ADD  CONSTRAINT [DF_stlTT_Cat2_cat2Description]  DEFAULT ('') FOR [cat2Description]
END

