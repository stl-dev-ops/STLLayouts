SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDieRemovalReasons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDieRemovalReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reason] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Blocked] [bit] NOT NULL,
 CONSTRAINT [PK_stlDieRemovalReasons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDieRemovalReasons_Blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDieRemovalReasons] ADD  CONSTRAINT [DF_stlDieRemovalReasons_Blocked]  DEFAULT ((0)) FOR [Blocked]
END

