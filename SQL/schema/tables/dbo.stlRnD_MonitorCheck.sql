SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRnD_MonitorCheck]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRnD_MonitorCheck](
	[stlRnD_MonitorCheckID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ArtWorkMade] [bit] NOT NULL,
	[ArtWorkChecked] [bit] NOT NULL,
	[PlanningMeeting] [bit] NOT NULL,
	[DiesChecked] [bit] NOT NULL,
 CONSTRAINT [PK_stlRnD_MonitorCheck] PRIMARY KEY CLUSTERED 
(
	[stlRnD_MonitorCheckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRnD_MonitorCheck_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRnD_MonitorCheck] ADD  CONSTRAINT [DF_stlRnD_MonitorCheck_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRnD_MonitorCheck_ArtWorkMade]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRnD_MonitorCheck] ADD  CONSTRAINT [DF_stlRnD_MonitorCheck_ArtWorkMade]  DEFAULT ((0)) FOR [ArtWorkMade]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_artWorkChecked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRnD_MonitorCheck] ADD  CONSTRAINT [DF_Table_1_artWorkChecked]  DEFAULT ((0)) FOR [ArtWorkChecked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRnD_MonitorCheck_PlanningMeeting]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRnD_MonitorCheck] ADD  CONSTRAINT [DF_stlRnD_MonitorCheck_PlanningMeeting]  DEFAULT ((0)) FOR [PlanningMeeting]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRnD_MonitorCheck_DiesChecked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRnD_MonitorCheck] ADD  CONSTRAINT [DF_stlRnD_MonitorCheck_DiesChecked]  DEFAULT ((0)) FOR [DiesChecked]
END

