SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_element_printsheet_surface_separation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_element_printsheet_surface_separation__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[element_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[side] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[color] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[plate_id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink_consumption] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [separationi0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[element_id] ASC,
	[side] ASC,
	[color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__element_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__element_id]  DEFAULT ('') FOR [element_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__side]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__side]  DEFAULT ('') FOR [side]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__color]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__color]  DEFAULT ('') FOR [color]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__plate_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__plate_id]  DEFAULT ('') FOR [plate_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_printsheet_surface_separation__ink_consumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_printsheet_surface_separation__] ADD  CONSTRAINT [DF_scheduling_element_printsheet_surface_separation__ink_consumption]  DEFAULT ((0)) FOR [ink_consumption]
END

