SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_CoatingSKU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_CoatingSKU](
	[stlST_CoatingSKUID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__in] [float] NOT NULL,
	[totam_in] [float] NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_aant__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_aant__in]  DEFAULT ((0)) FOR [aant__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_totam_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_totam_in]  DEFAULT ((0)) FOR [totam_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_CoatingSKU_vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_CoatingSKU] ADD  CONSTRAINT [DF_stlST_CoatingSKU_vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

