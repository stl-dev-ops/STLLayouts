SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spoolTracePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spoolTracePermission](
	[spoolTracePermissionID] [int] IDENTITY(1,1) NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[unlockPressRoll] [bit] NOT NULL,
	[unlockRewindBrick] [bit] NOT NULL,
	[aniloxOverride] [bit] NOT NULL,
	[rewindJobSignOff] [bit] NOT NULL,
 CONSTRAINT [PK_spoolTracePermission] PRIMARY KEY CLUSTERED 
(
	[spoolTracePermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_unlockPressRoll]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_unlockPressRoll]  DEFAULT ((0)) FOR [unlockPressRoll]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_unlockRewindBrick]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_unlockRewindBrick]  DEFAULT ((0)) FOR [unlockRewindBrick]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_aniloxOverride]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_aniloxOverride]  DEFAULT ((0)) FOR [aniloxOverride]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolTracePermission_rewindJobSignOff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolTracePermission] ADD  CONSTRAINT [DF_spoolTracePermission_rewindJobSignOff]  DEFAULT ((0)) FOR [rewindJobSignOff]
END

