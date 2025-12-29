SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaints](
	[stlCustomerComplaintID] [int] IDENTITY(100,1) NOT NULL,
	[ComplaintDate] [datetime] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlCustomerComplaintStatusID] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaints] PRIMARY KEY CLUSTERED 
(
	[stlCustomerComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]') AND name = N'IX_stlCustomerComplaints_ComplaintDate')
CREATE NONCLUSTERED INDEX [IX_stlCustomerComplaints_ComplaintDate] ON [dbo].[stlCustomerComplaints]
(
	[ComplaintDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]') AND name = N'IX_stlCustomerComplaints_Status')
CREATE NONCLUSTERED INDEX [IX_stlCustomerComplaints_Status] ON [dbo].[stlCustomerComplaints]
(
	[stlCustomerComplaintStatusID] ASC,
	[Deleted] ASC
)
INCLUDE([ComplaintDate],[kla__ref],[Description]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]') AND name = N'IX_stlCustomerComplaintsCustomer')
CREATE NONCLUSTERED INDEX [IX_stlCustomerComplaintsCustomer] ON [dbo].[stlCustomerComplaints]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_ComplaintDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_ComplaintDate]  DEFAULT (getdate()) FOR [ComplaintDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_Description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_Description]  DEFAULT ('') FOR [Description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_stlCustomerComplaintStatusID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_stlCustomerComplaintStatusID]  DEFAULT ((0)) FOR [stlCustomerComplaintStatusID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaints_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaints] ADD  CONSTRAINT [DF_stlCustomerComplaints_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaints_stlCustomerComplaintStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]'))
ALTER TABLE [dbo].[stlCustomerComplaints]  WITH CHECK ADD  CONSTRAINT [FK_stlCustomerComplaints_stlCustomerComplaintStatus] FOREIGN KEY([stlCustomerComplaintStatusID])
REFERENCES [dbo].[stlCustomerComplaintStatus] ([stlCustomerComplaintStatusID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaints_stlCustomerComplaintStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints]'))
ALTER TABLE [dbo].[stlCustomerComplaints] CHECK CONSTRAINT [FK_stlCustomerComplaints_stlCustomerComplaintStatus]
