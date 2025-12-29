SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerByYearNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsByCustomerByYearID] [int] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerByYearNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearNotes] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearNotes] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearNotes] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearNotes_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearNotes]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsByCustomerByYearNotes_stlProjectionsByCustomerByYear] FOREIGN KEY([ProjectionsByCustomerByYearID])
REFERENCES [dbo].[stlProjectionsByCustomerByYear] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearNotes_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearNotes]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearNotes] CHECK CONSTRAINT [FK_stlProjectionsByCustomerByYearNotes_stlProjectionsByCustomerByYear]
