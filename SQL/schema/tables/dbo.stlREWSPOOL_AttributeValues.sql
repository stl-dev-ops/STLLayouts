SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_AttributeValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_AttributeValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NOT NULL,
	[AttributeID] [int] NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlREWSPOOL_SRC_SettingsValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_SettingsValues_Value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_SettingsValues_Value]  DEFAULT ('') FOR [Value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_SettingsValues_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_SettingsValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_SettingsValues_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_SettingsValues_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_SettingsValues_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_SettingsValues_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SettingsValues_stlREWSPOOL_Cards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_AttributeValues]'))
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_SettingsValues_stlREWSPOOL_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[stlREWSPOOL_Cards] ([CardID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SettingsValues_stlREWSPOOL_Cards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_AttributeValues]'))
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] CHECK CONSTRAINT [FK_stlREWSPOOL_SettingsValues_stlREWSPOOL_Cards]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SRC_SettingsValues_stlREWSPOOL_SRC_SettingsLabels]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_AttributeValues]'))
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_SRC_SettingsValues_stlREWSPOOL_SRC_SettingsLabels] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[stlREWSPOOL_Attributes] ([AttributelID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SRC_SettingsValues_stlREWSPOOL_SRC_SettingsLabels]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_AttributeValues]'))
ALTER TABLE [dbo].[stlREWSPOOL_AttributeValues] CHECK CONSTRAINT [FK_stlREWSPOOL_SRC_SettingsValues_stlREWSPOOL_SRC_SettingsLabels]
