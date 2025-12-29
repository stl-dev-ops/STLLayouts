SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_Tool]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_Tool](
	[stlSR_ToolID] [int] IDENTITY(1,1) NOT NULL,
	[stlSR_SiliconeRecipeID] [int] NOT NULL,
	[aniloxSizeBCM] [int] NOT NULL,
	[target] [int] NOT NULL,
	[rangeMin] [int] NOT NULL,
	[rangeMax] [int] NOT NULL,
	[lowGSM] [money] NOT NULL,
	[highGSM] [money] NOT NULL,
 CONSTRAINT [PK_stlSR_Tool] PRIMARY KEY CLUSTERED 
(
	[stlSR_ToolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_aniloxSizeBCM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_aniloxSizeBCM]  DEFAULT ((0)) FOR [aniloxSizeBCM]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_target]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_target]  DEFAULT ((0)) FOR [target]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_rangeMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_rangeMin]  DEFAULT ((0)) FOR [rangeMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_rangeMax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_rangeMax]  DEFAULT ((0)) FOR [rangeMax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_lowGSM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_lowGSM]  DEFAULT ((0)) FOR [lowGSM]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Tool_highGSM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Tool] ADD  CONSTRAINT [DF_stlSR_Tool_highGSM]  DEFAULT ((0)) FOR [highGSM]
END

