SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_PickedSKUs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJMS_PickedSKUs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[From_vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[To_vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[QuantityDelivered] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlJMS_PickedSKUs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_PickedSKUs]') AND name = N'IX_stlJMS_PickedSKUs_ord__ref')
CREATE NONCLUSTERED INDEX [IX_stlJMS_PickedSKUs_ord__ref] ON [dbo].[stlJMS_PickedSKUs]
(
	[ord__ref] ASC
)
INCLUDE([art__ref],[artd_ref],[From_vak__ref],[To_vak__ref],[QuantityDelivered],[Deleted],[Created],[CreatedBy],[Updated],[UpdatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_PickedSKUs_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_PickedSKUs] ADD  CONSTRAINT [DF_stlJMS_PickedSKUs_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_PickedSKUs_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_PickedSKUs] ADD  CONSTRAINT [DF_stlJMS_PickedSKUs_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_PickedSKUs_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_PickedSKUs] ADD  CONSTRAINT [DF_stlJMS_PickedSKUs_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_PickedSKUs_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_PickedSKUs] ADD  CONSTRAINT [DF_stlJMS_PickedSKUs_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_PickedSKUs_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_PickedSKUs] ADD  CONSTRAINT [DF_stlJMS_PickedSKUs_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

