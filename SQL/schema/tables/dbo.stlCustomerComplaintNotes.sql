SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaintNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlCustomerComplaintID] [int] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaintNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintNotes] ADD  CONSTRAINT [DF_stlCustomerComplaintNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintNotes] ADD  CONSTRAINT [DF_stlCustomerComplaintNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintNotes] ADD  CONSTRAINT [DF_stlCustomerComplaintNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintNotes_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintNotes]'))
ALTER TABLE [dbo].[stlCustomerComplaintNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlCustomerComplaintNotes_stlCustomerComplaints] FOREIGN KEY([stlCustomerComplaintID])
REFERENCES [dbo].[stlCustomerComplaints] ([stlCustomerComplaintID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintNotes_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintNotes]'))
ALTER TABLE [dbo].[stlCustomerComplaintNotes] CHECK CONSTRAINT [FK_stlCustomerComplaintNotes_stlCustomerComplaints]
