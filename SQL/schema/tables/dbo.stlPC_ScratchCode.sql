SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_ScratchCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_ScratchCode](
	[stlPC_ScratchCodeID] [int] IDENTITY(1,1) NOT NULL,
	[scratchCode] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[version] [int] NOT NULL,
	[locked] [bit] NOT NULL,
	[testDescription] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[note] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[notExceed100FRM] [bit] NULL,
	[notExceed130FPM] [bit] NULL,
	[tmStampt] [timestamp] NULL,
	[hasMoveRowPermission] [bit] NOT NULL,
	[stlPC_AbrasionTestID] [int] NULL,
	[stlPC_ScratchTestID] [int] NULL,
	[stlPC_PeelTestID] [int] NULL,
 CONSTRAINT [PK_stlPC_ScratchCode] PRIMARY KEY CLUSTERED 
(
	[stlPC_ScratchCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_scratchCode]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_scratchCode]  DEFAULT ('') FOR [scratchCode]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_version]  DEFAULT ((1)) FOR [version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_testDescription]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_testDescription]  DEFAULT ('') FOR [testDescription]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_note]  DEFAULT ('') FOR [note]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_NotExceed100FRM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_NotExceed100FRM]  DEFAULT ((0)) FOR [notExceed100FRM]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_notExceed130FPM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_notExceed130FPM]  DEFAULT ((0)) FOR [notExceed130FPM]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCode_hasMoveRowPermission]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCode] ADD  CONSTRAINT [DF_stlPC_ScratchCode_hasMoveRowPermission]  DEFAULT ((0)) FOR [hasMoveRowPermission]
END

