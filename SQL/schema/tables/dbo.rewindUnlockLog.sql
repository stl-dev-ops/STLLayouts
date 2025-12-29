SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rewindUnlockLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rewindUnlockLog](
	[rewindUnlockLog] [int] IDENTITY(1,1) NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rewindBrickID] [money] NOT NULL,
	[pressRollWasteID] [int] NOT NULL,
 CONSTRAINT [PK_rewindUnlockLog] PRIMARY KEY CLUSTERED 
(
	[rewindUnlockLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindUnlockLog_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindUnlockLog] ADD  CONSTRAINT [DF_rewindUnlockLog_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindUnlockLog_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindUnlockLog] ADD  CONSTRAINT [DF_rewindUnlockLog_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindUnlockLog_rewindBrickID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindUnlockLog] ADD  CONSTRAINT [DF_rewindUnlockLog_rewindBrickID]  DEFAULT ((0)) FOR [rewindBrickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindUnlockLog_pressRollWasteID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindUnlockLog] ADD  CONSTRAINT [DF_rewindUnlockLog_pressRollWasteID]  DEFAULT ((0)) FOR [pressRollWasteID]
END

