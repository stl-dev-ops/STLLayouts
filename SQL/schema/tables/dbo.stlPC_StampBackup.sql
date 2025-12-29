SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_StampBackup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_StampBackup](
	[stlPC_StampID] [int] IDENTITY(1,1) NOT NULL,
	[stampNo] [int] NOT NULL,
	[lineCount] [int] NOT NULL,
	[BCM] [money] NOT NULL,
	[newDate] [datetime] NULL,
	[note] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[active] [bit] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[stlPC_AniloxMachineID] [int] NOT NULL
) ON [PRIMARY]
END
