SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Footage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Footage](
	[stlMRS_FootageID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ftNeeded] [float] NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Footage_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Footage] ADD  CONSTRAINT [DF_stlMRS_Footage_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Footage_dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Footage] ADD  CONSTRAINT [DF_stlMRS_Footage_dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Footage_ftNeeded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Footage] ADD  CONSTRAINT [DF_stlMRS_Footage_ftNeeded]  DEFAULT ((0)) FOR [ftNeeded]
END

