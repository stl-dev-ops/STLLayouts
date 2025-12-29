SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSCS_ScratchCodeAttribute]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSCS_ScratchCodeAttribute](
	[klcodref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlSCS_AttributeID] [int] NOT NULL,
	[Answer] [int] NOT NULL,
 CONSTRAINT [PK_stlSCS_ScratchCodeAttribute] PRIMARY KEY CLUSTERED 
(
	[klcodref] ASC,
	[stlSCS_AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSCS_ScratchCodeAttribute_stlSCS_Attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSCS_ScratchCodeAttribute]'))
ALTER TABLE [dbo].[stlSCS_ScratchCodeAttribute]  WITH CHECK ADD  CONSTRAINT [FK_stlSCS_ScratchCodeAttribute_stlSCS_Attribute] FOREIGN KEY([stlSCS_AttributeID])
REFERENCES [dbo].[stlSCS_Attribute] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSCS_ScratchCodeAttribute_stlSCS_Attribute]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSCS_ScratchCodeAttribute]'))
ALTER TABLE [dbo].[stlSCS_ScratchCodeAttribute] CHECK CONSTRAINT [FK_stlSCS_ScratchCodeAttribute_stlSCS_Attribute]
