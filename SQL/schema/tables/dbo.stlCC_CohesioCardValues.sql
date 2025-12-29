SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CohesioCardValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CohesioCardID] [int] NOT NULL,
	[CohesioSectionID] [int] NOT NULL,
	[CohesioSettingID] [int] NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CohesioCardValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardValues_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardValues] ADD  CONSTRAINT [DF_stlCC_CohesioCardValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardValues_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardValues] ADD  CONSTRAINT [DF_stlCC_CohesioCardValues_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardValues_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardValues] ADD  CONSTRAINT [DF_stlCC_CohesioCardValues_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioCards] FOREIGN KEY([CohesioCardID])
REFERENCES [dbo].[stlCC_CohesioCards] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues] CHECK CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioCards]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioSections]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioSections] FOREIGN KEY([CohesioSectionID])
REFERENCES [dbo].[stlCC_CohesioSections] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioSections]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues] CHECK CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioSections]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioSettings]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioSettings] FOREIGN KEY([CohesioSettingID])
REFERENCES [dbo].[stlCC_CohesioSettings] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardValues_stlCC_CohesioSettings]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardValues]'))
ALTER TABLE [dbo].[stlCC_CohesioCardValues] CHECK CONSTRAINT [FK_stlCC_CohesioCardValues_stlCC_CohesioSettings]
