SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTests]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_DrugTests](
	[DrugTestID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[TransitionDate] [datetime] NULL,
	[ResultID] [int] NOT NULL,
	[Notes] [text] COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_DrugTests] PRIMARY KEY CLUSTERED 
(
	[DrugTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_ResultID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_ResultID]  DEFAULT ((2)) FOR [ResultID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTests_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTests] ADD  CONSTRAINT [DF_stlRecruiting_DrugTests_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_DrugTests_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTests]'))
ALTER TABLE [dbo].[stlRecruiting_DrugTests]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_DrugTests_stlRecruiting_Applications] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[stlRecruiting_Applications] ([ApplicationID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_DrugTests_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTests]'))
ALTER TABLE [dbo].[stlRecruiting_DrugTests] CHECK CONSTRAINT [FK_stlRecruiting_DrugTests_stlRecruiting_Applications]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_DrugTests_stlRecruiting_DrugTestResults]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTests]'))
ALTER TABLE [dbo].[stlRecruiting_DrugTests]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_DrugTests_stlRecruiting_DrugTestResults] FOREIGN KEY([ResultID])
REFERENCES [dbo].[stlRecruiting_DrugTestResults] ([ResultID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_DrugTests_stlRecruiting_DrugTestResults]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTests]'))
ALTER TABLE [dbo].[stlRecruiting_DrugTests] CHECK CONSTRAINT [FK_stlRecruiting_DrugTests_stlRecruiting_DrugTestResults]
