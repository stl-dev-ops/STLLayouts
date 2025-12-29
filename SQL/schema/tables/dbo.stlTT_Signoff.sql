SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTT_Signoff]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlTT_Signoff](
	[stlTT_signoffID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_Signoff] ADD  CONSTRAINT [DF_Table_1_name]  DEFAULT ('') FOR [name]
END

