SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_StampChangeLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_StampChangeLog](
	[stlPC_StampChangeLogID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_StampID] [int] NOT NULL,
	[OldstampNo] [varchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[OldlineCount] [int] NOT NULL,
	[OldBCM] [money] NOT NULL,
	[OldnewDate] [datetime] NULL,
	[Oldnote] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Oldactive] [bit] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[NewstampNo] [varchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[NewlineCount] [int] NOT NULL,
	[NewBCM] [money] NOT NULL,
	[NewnewDate] [datetime] NULL,
	[Newnote] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Newactive] [bit] NOT NULL,
	[modifier] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[modifiedDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlPC_StampChangeLog] PRIMARY KEY CLUSTERED 
(
	[stlPC_StampChangeLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_StampChangeLog_modifiedDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_StampChangeLog] ADD  CONSTRAINT [DF_stlPC_StampChangeLog_modifiedDt]  DEFAULT (getdate()) FOR [modifiedDt]
END

