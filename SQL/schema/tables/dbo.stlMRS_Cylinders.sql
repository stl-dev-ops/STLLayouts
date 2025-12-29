SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Cylinders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Cylinders](
	[stlMRS_CylindersID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omwentel] [float] NOT NULL,
	[pass] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toolKW] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[teethID] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMRS_Cylinders] PRIMARY KEY CLUSTERED 
(
	[stlMRS_CylindersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_prs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_prs__oms]  DEFAULT ('') FOR [prs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_omwentel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_omwentel]  DEFAULT ((0)) FOR [omwentel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_pass]  DEFAULT ('') FOR [pass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_size]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_size]  DEFAULT ('') FOR [toolKW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Cylinders_mag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Cylinders] ADD  CONSTRAINT [DF_stlMRS_Cylinders_mag]  DEFAULT ('') FOR [teethID]
END

