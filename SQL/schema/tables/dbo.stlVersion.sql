SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlVersion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[App] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlVersion_Path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlVersion] ADD  CONSTRAINT [DF_stlVersion_Path]  DEFAULT ('') FOR [Path]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlVersion_App]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlVersion] ADD  CONSTRAINT [DF_stlVersion_App]  DEFAULT ('') FOR [App]
END

