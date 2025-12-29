SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CoatingCardRecordTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Row] [int] NOT NULL,
	[Col] [int] NOT NULL,
	[AttributeID] [int] NOT NULL,
	[SettingID] [int] NOT NULL,
	[TypeID] [tinyint] NOT NULL,
 CONSTRAINT [PK_stlCC_CoatingCardRecordTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardAttributes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordTemplate]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordTemplate]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardAttributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[stlCC_CoatingCardAttributes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardAttributes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordTemplate]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordTemplate] CHECK CONSTRAINT [FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardAttributes]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardSettings]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordTemplate]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordTemplate]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardSettings] FOREIGN KEY([SettingID])
REFERENCES [dbo].[stlCC_CoatingCardSettings] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardSettings]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordTemplate]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordTemplate] CHECK CONSTRAINT [FK_stlCC_CoatingCardRecordTemplate_stlCC_CoatingCardSettings]
