SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Tools]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Tools](
	[stlMRS_ToolsID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_rpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_oms] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[tanden__] [float] NOT NULL,
	[cylinderType] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMRS_Tools] PRIMARY KEY CLUSTERED 
(
	[stlMRS_ToolsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_stns_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_stns_rpn]  DEFAULT ('') FOR [stns_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_stns_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_stns_oms]  DEFAULT ('') FOR [stns_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_tanden__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_tanden__]  DEFAULT ((0)) FOR [tanden__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Tools_cylinderType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Tools] ADD  CONSTRAINT [DF_stlMRS_Tools_cylinderType]  DEFAULT ('') FOR [cylinderType]
END

