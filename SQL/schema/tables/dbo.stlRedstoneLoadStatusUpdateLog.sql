SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRedstoneLoadStatusUpdateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRedstoneLoadStatusUpdateLog](
	[stlRedstoneLoadStatusUpdateLogID] [int] IDENTITY(1,1) NOT NULL,
	[PackingListRef] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Carrier] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[TrackingNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[TotalCost] [money] NOT NULL,
	[ExpectedPickupDate] [datetime] NOT NULL,
	[ExpectedDeliveryDate] [datetime] NOT NULL,
	[LoadStatus] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[LoadDateCreated] [datetime] NOT NULL,
	[LoadDateLastModified] [datetime] NOT NULL,
	[OrderLineNumber] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ImportStatus] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_stlRedstoneLoadStatusUpdate] PRIMARY KEY CLUSTERED 
(
	[stlRedstoneLoadStatusUpdateLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_PackingListRef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_PackingListRef]  DEFAULT ('') FOR [PackingListRef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_TrackingNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_TrackingNumber]  DEFAULT ('') FOR [TrackingNumber]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_TotalCost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_TotalCost]  DEFAULT ((0)) FOR [TotalCost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_LoadStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_LoadStatus]  DEFAULT ('') FOR [LoadStatus]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_OrderLineNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_OrderLineNumber]  DEFAULT ('') FOR [OrderLineNumber]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_ImportMessage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_Table_1_ImportMessage]  DEFAULT ('') FOR [ImportStatus]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneLoadStatusUpdate_tmStamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneLoadStatusUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneLoadStatusUpdate_tmStamp]  DEFAULT (getdate()) FOR [tmStamp]
END

