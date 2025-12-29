SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_Press]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_Press](
	[stlPC_PressID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stations] [int] NOT NULL,
	[inactive] [bit] NOT NULL,
 CONSTRAINT [PK_stlPC_Press] PRIMARY KEY CLUSTERED 
(
	[stlPC_PressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Press_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Press] ADD  CONSTRAINT [DF_stlPC_Press_description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Press_stations]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Press] ADD  CONSTRAINT [DF_stlPC_Press_stations]  DEFAULT ((0)) FOR [stations]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Press_inactive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Press] ADD  CONSTRAINT [DF_stlPC_Press_inactive]  DEFAULT ((0)) FOR [inactive]
END

