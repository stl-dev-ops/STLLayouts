SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_StampChangeLogBackup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_StampChangeLogBackup](
	[stlPC_StampChangeLogID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_StampID] [int] NOT NULL,
	[OldstampNo] [int] NOT NULL,
	[OldlineCount] [int] NOT NULL,
	[OldBCM] [money] NOT NULL,
	[OldnewDate] [datetime] NULL,
	[Oldnote] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Oldactive] [bit] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[NewstampNo] [int] NOT NULL,
	[NewlineCount] [int] NOT NULL,
	[NewBCM] [money] NOT NULL,
	[NewnewDate] [datetime] NULL,
	[Newnote] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Newactive] [bit] NOT NULL,
	[modifier] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[modifiedDt] [datetime] NOT NULL
) ON [PRIMARY]
END
