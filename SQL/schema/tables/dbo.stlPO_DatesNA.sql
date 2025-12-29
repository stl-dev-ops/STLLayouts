SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPO_DatesNA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPO_DatesNA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderLineItemID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DateType] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPO_Mat_DatesNA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPO_DatesNA]') AND name = N'IX_stlPO_Mat_DatesNA')
CREATE NONCLUSTERED INDEX [IX_stlPO_Mat_DatesNA] ON [dbo].[stlPO_DatesNA]
(
	[Deleted] ASC,
	[PurchaseOrderID] ASC,
	[OrderLineItemID] ASC,
	[DateType] ASC
)
INCLUDE([Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_DatesNA_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_DatesNA] ADD  CONSTRAINT [DF_stlPO_Mat_DatesNA_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_DatesNA_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_DatesNA] ADD  CONSTRAINT [DF_stlPO_Mat_DatesNA_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPO_Mat_DatesNA_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPO_DatesNA] ADD  CONSTRAINT [DF_stlPO_Mat_DatesNA_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

