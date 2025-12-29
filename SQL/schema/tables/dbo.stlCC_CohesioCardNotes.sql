SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CohesioCardNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CohesioCardID] [int] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CohesioCardNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardNotes] ADD  CONSTRAINT [DF_stlCC_CohesioCardNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardNotes] ADD  CONSTRAINT [DF_stlCC_CohesioCardNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardNotes] ADD  CONSTRAINT [DF_stlCC_CohesioCardNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardNotes_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardNotes]'))
ALTER TABLE [dbo].[stlCC_CohesioCardNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardNotes_stlCC_CohesioCards] FOREIGN KEY([CohesioCardID])
REFERENCES [dbo].[stlCC_CohesioCards] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardNotes_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardNotes]'))
ALTER TABLE [dbo].[stlCC_CohesioCardNotes] CHECK CONSTRAINT [FK_stlCC_CohesioCardNotes_stlCC_CohesioCards]
