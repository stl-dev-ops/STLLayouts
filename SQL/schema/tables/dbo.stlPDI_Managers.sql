SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Managers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_Managers](
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
