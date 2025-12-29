SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_ProductCoating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_ProductCoating](
	[stlCJ_ProductCoatingID] [int] IDENTITY(1,1) NOT NULL,
	[stlCJ_ProductID] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ftPerLb] [int] NOT NULL,
	[minimum] [int] NOT NULL,
	[fixedConsumption] [int] NOT NULL,
	[testWidth] [float] NOT NULL,
	[ozPerMSI] [float] NOT NULL,
	[passNo] [int] NOT NULL,
	[syncError] [bit] NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_oms] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCJ_ProductCoating] PRIMARY KEY CLUSTERED 
(
	[stlCJ_ProductCoatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_ftPerLb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_ftPerLb]  DEFAULT ((0)) FOR [ftPerLb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_minimum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_minimum]  DEFAULT ((0)) FOR [minimum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_fixedconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_fixedconsumption]  DEFAULT ((0)) FOR [fixedConsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_testWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_testWidth]  DEFAULT ((0)) FOR [testWidth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_ozPerMSI]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_ozPerMSI]  DEFAULT ((0)) FOR [ozPerMSI]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_passNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_passNo]  DEFAULT ((1)) FOR [passNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_syncStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_syncStatus]  DEFAULT ((0)) FOR [syncError]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductCoating_arth_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductCoating] ADD  CONSTRAINT [DF_stlCJ_ProductCoating_arth_oms]  DEFAULT ('') FOR [arth_oms]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCJ_ProductCoating_stlCJ_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCJ_ProductCoating]'))
ALTER TABLE [dbo].[stlCJ_ProductCoating]  WITH CHECK ADD  CONSTRAINT [FK_stlCJ_ProductCoating_stlCJ_Product] FOREIGN KEY([stlCJ_ProductID])
REFERENCES [dbo].[stlCJ_Product] ([stlCJ_ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCJ_ProductCoating_stlCJ_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCJ_ProductCoating]'))
ALTER TABLE [dbo].[stlCJ_ProductCoating] CHECK CONSTRAINT [FK_stlCJ_ProductCoating_stlCJ_Product]
