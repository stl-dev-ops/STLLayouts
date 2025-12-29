SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempTestDelete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tempTestDelete](
	[RowNumber] [int] IDENTITY(0,1) NOT NULL,
	[EventClass] [int] NULL,
	[TextData] [ntext] COLLATE Latin1_General_CI_AS NULL,
	[ApplicationName] [nvarchar](128) COLLATE Latin1_General_CI_AS NULL,
	[NTUserName] [nvarchar](128) COLLATE Latin1_General_CI_AS NULL,
	[LoginName] [nvarchar](128) COLLATE Latin1_General_CI_AS NULL,
	[CPU] [int] NULL,
	[Reads] [bigint] NULL,
	[Writes] [bigint] NULL,
	[Duration] [bigint] NULL,
	[ClientProcessID] [int] NULL,
	[SPID] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[BinaryData] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
