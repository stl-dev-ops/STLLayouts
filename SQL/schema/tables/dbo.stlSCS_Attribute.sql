SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSCS_Attribute]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSCS_Attribute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Attribute] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Blocked] [bit] NOT NULL,
 CONSTRAINT [PK_stlScratchCodeAttributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSCS_Attribute_Blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSCS_Attribute] ADD  CONSTRAINT [DF_stlSCS_Attribute_Blocked]  DEFAULT ((0)) FOR [Blocked]
END

