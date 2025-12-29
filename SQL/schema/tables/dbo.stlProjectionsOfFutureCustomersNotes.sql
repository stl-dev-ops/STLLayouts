SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsOfFutureCustomersNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsOfFutureCustomersID] [int] NOT NULL,
	[ProjectionYear] [int] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsOfFutureCustomersNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersNotes_Notes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersNotes_Notes]  DEFAULT ('') FOR [Notes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersNotes_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersNotes]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsOfFutureCustomersNotes_stlProjectionsOfFutureCustomers] FOREIGN KEY([ProjectionsOfFutureCustomersID])
REFERENCES [dbo].[stlProjectionsOfFutureCustomers] ([ProjectionsOfFutureCustomersID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersNotes_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersNotes]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersNotes] CHECK CONSTRAINT [FK_stlProjectionsOfFutureCustomersNotes_stlProjectionsOfFutureCustomers]
