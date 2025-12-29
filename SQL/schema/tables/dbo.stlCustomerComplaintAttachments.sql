SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintAttachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaintAttachments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlCustomerComplaintID] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[FileName] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaintAttachments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintAttachments_DisplayName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] ADD  CONSTRAINT [DF_stlCustomerComplaintAttachments_DisplayName]  DEFAULT ('') FOR [DisplayName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintAttachments_FileName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] ADD  CONSTRAINT [DF_stlCustomerComplaintAttachments_FileName]  DEFAULT ('') FOR [FileName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintAttachments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] ADD  CONSTRAINT [DF_stlCustomerComplaintAttachments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintAttachments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] ADD  CONSTRAINT [DF_stlCustomerComplaintAttachments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintAttachments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] ADD  CONSTRAINT [DF_stlCustomerComplaintAttachments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintAttachments_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintAttachments]'))
ALTER TABLE [dbo].[stlCustomerComplaintAttachments]  WITH CHECK ADD  CONSTRAINT [FK_stlCustomerComplaintAttachments_stlCustomerComplaints] FOREIGN KEY([stlCustomerComplaintID])
REFERENCES [dbo].[stlCustomerComplaints] ([stlCustomerComplaintID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintAttachments_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintAttachments]'))
ALTER TABLE [dbo].[stlCustomerComplaintAttachments] CHECK CONSTRAINT [FK_stlCustomerComplaintAttachments_stlCustomerComplaints]
