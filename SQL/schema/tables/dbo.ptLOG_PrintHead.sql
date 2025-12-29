SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ptLOG_PrintHead]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ptLOG_PrintHead](
	[ptLOG_PrintHeadID] [int] IDENTITY(1,1) NOT NULL,
	[LogDt] [datetime] NOT NULL,
	[SN] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[LineDrop] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Cycle_Count] [int] NOT NULL,
	[Reset_Count] [int] NOT NULL,
	[User_Reset] [bit] NOT NULL,
	[Entry_Details] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Installed_SN] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Replaced_SN] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Replaced_InstalledDt] [datetime] NULL,
	[Replaced_Count] [int] NOT NULL,
 CONSTRAINT [PK_ptLOG_PrintHead] PRIMARY KEY CLUSTERED 
(
	[ptLOG_PrintHeadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [U_ptLOG_PrintHead] UNIQUE NONCLUSTERED 
(
	[LogDt] ASC,
	[SN] ASC,
	[LineDrop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_SN]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_SN]  DEFAULT ('') FOR [SN]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_LineDrop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_LineDrop]  DEFAULT ('') FOR [LineDrop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_Cycle_Count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_Cycle_Count]  DEFAULT ((0)) FOR [Cycle_Count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_Reset_Count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_Reset_Count]  DEFAULT ((0)) FOR [Reset_Count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_User_Reset]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_User_Reset]  DEFAULT ((0)) FOR [User_Reset]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_Entry_Details]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_Entry_Details]  DEFAULT ('') FOR [Entry_Details]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_Replaced_SN]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_Replaced_SN]  DEFAULT ('') FOR [Replaced_SN]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ptLOG_PrintHead_Replaced_Count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ptLOG_PrintHead] ADD  CONSTRAINT [DF_ptLOG_PrintHead_Replaced_Count]  DEFAULT ((0)) FOR [Replaced_Count]
END

