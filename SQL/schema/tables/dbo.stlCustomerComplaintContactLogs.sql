SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintContactLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaintContactLogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlCustomerComplaintID] [int] NOT NULL,
	[LogNotes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[LogDate] [datetime] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaintLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintContactLogs_LogDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs] ADD  CONSTRAINT [DF_stlCustomerComplaintContactLogs_LogDate]  DEFAULT (getdate()) FOR [LogDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintLogs_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs] ADD  CONSTRAINT [DF_stlCustomerComplaintLogs_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintLogs_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs] ADD  CONSTRAINT [DF_stlCustomerComplaintLogs_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintLogs_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs] ADD  CONSTRAINT [DF_stlCustomerComplaintLogs_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintLogs_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintContactLogs]'))
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs]  WITH CHECK ADD  CONSTRAINT [FK_stlCustomerComplaintLogs_stlCustomerComplaints] FOREIGN KEY([stlCustomerComplaintID])
REFERENCES [dbo].[stlCustomerComplaints] ([stlCustomerComplaintID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintLogs_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintContactLogs]'))
ALTER TABLE [dbo].[stlCustomerComplaintContactLogs] CHECK CONSTRAINT [FK_stlCustomerComplaintLogs_stlCustomerComplaints]
