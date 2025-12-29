SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailEventsLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailEventsLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[MessageTemplate] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Level] [nvarchar](128) COLLATE Latin1_General_CI_AS NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Exception] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Properties] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
