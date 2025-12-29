SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_element_plate__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_element_plate__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[element_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[plate_id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[plate_status] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[purpose] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[identical] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_element_platei0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__element_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__element_id]  DEFAULT ('') FOR [element_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__plate_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__plate_id]  DEFAULT ('') FOR [plate_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__plate_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__plate_status]  DEFAULT ('') FOR [plate_status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__purpose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__purpose]  DEFAULT ('') FOR [purpose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_plate__identical]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_plate__] ADD  CONSTRAINT [DF_scheduling_element_plate__identical]  DEFAULT ((0)) FOR [identical]
END

