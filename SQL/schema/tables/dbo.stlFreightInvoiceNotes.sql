SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlFreightInvoiceNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlFreightInvoiceNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlFreightInvoiceNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlFreightInvoiceNotes_Notes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlFreightInvoiceNotes] ADD  CONSTRAINT [DF_stlFreightInvoiceNotes_Notes]  DEFAULT ('') FOR [Notes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlFreightInvoiceNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlFreightInvoiceNotes] ADD  CONSTRAINT [DF_stlFreightInvoiceNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlFreightInvoiceNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlFreightInvoiceNotes] ADD  CONSTRAINT [DF_stlFreightInvoiceNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlFreightInvoiceNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlFreightInvoiceNotes] ADD  CONSTRAINT [DF_stlFreightInvoiceNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

