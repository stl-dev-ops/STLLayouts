SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPO_CompletedNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPO_CompletedNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderLineItemID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DateType] [tinyint] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPO_Mat_CompletedNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPO_CompletedNotes]') AND name = N'IX_stlPO_Mat_CompletedNotes')
CREATE NONCLUSTERED INDEX [IX_stlPO_Mat_CompletedNotes] ON [dbo].[stlPO_CompletedNotes]
(
	[Deleted] ASC,
	[PurchaseOrderID] ASC,
	[OrderLineItemID] ASC,
	[DateType] ASC
)
INCLUDE([Notes],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_CompletedNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_CompletedNotes] ADD  CONSTRAINT [DF_stlPO_Mat_CompletedNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_CompletedNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_CompletedNotes] ADD  CONSTRAINT [DF_stlPO_Mat_CompletedNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_CompletedNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_CompletedNotes] ADD  CONSTRAINT [DF_stlPO_Mat_CompletedNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

