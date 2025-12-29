SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRedstoneUpdateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRedstoneUpdateLog](
	[stlRedstoneUpdateLogID] [int] IDENTITY(1,1) NOT NULL,
	[PackingListRef] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Carrier] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[TrackingNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[TotalCost] [float] NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneUpdateLog_PackingListRef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneUpdateLog_PackingListRef]  DEFAULT ('') FOR [PackingListRef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneUpdateLog_Carrier]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneUpdateLog_Carrier]  DEFAULT ('') FOR [Carrier]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneUpdateLog_TrackingNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneUpdateLog_TrackingNumber]  DEFAULT ('') FOR [TrackingNumber]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstoneUpdateLog_TotalCost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstoneUpdateLog] ADD  CONSTRAINT [DF_stlRedstoneUpdateLog_TotalCost]  DEFAULT ((0)) FOR [TotalCost]
END

