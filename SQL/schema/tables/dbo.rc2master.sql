SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rc2master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rc2master](
	[Roll_ID] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Master_Roll] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Hanita_AVG] [float] NULL,
	[STL_AVG] [float] NULL,
	[rowID] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
