SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_WasteException]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_WasteException](
	[stlJM_WasteExceptionID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_WasteException_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_WasteException] ADD  CONSTRAINT [DF_stlJM_WasteException_art__ref]  DEFAULT ('') FOR [art__ref]
END

