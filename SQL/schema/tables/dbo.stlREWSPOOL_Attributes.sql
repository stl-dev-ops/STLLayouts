SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Attributes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_Attributes](
	[AttributelID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[AttributeType] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlREWSPOOL_SRC_SettingsLabels] PRIMARY KEY CLUSTERED 
(
	[AttributelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Attributes_Attribute]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Attributes] ADD  CONSTRAINT [DF_stlREWSPOOL_Attributes_Attribute]  DEFAULT ('') FOR [AttributeName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Attributes_DataType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Attributes] ADD  CONSTRAINT [DF_stlREWSPOOL_Attributes_DataType]  DEFAULT ('') FOR [AttributeType]
END

