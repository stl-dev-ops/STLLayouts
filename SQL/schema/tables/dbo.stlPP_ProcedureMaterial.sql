SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_ProcedureMaterial](
	[stlPP_ProcedureMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[stlPP_PackingProcedureID] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlPP_ProcedureMaterialPerID] [int] NOT NULL,
	[stlPP_PackingMaterialTypeID] [int] NOT NULL,
 CONSTRAINT [PK_stlPP_ProcedureMaterial] PRIMARY KEY CLUSTERED 
(
	[stlPP_ProcedureMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_stlPP_PackingMaterialID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_stlPP_PackingMaterialID]  DEFAULT ((0)) FOR [stlPP_PackingProcedureID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_qty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_qty]  DEFAULT ((0)) FOR [qty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPerID]  DEFAULT ((0)) FOR [stlPP_ProcedureMaterialPerID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterial_stlPP_PackingMaterialTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterial_stlPP_PackingMaterialTypeID]  DEFAULT ((0)) FOR [stlPP_PackingMaterialTypeID]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterial]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterial]'))
ALTER TABLE [dbo].[stlPP_ProcedureMaterial]  WITH CHECK ADD  CONSTRAINT [FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterial] FOREIGN KEY([stlPP_PackingProcedureID])
REFERENCES [dbo].[stlPP_PackingProcedure] ([stlPP_PackingProcedureID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterial]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterial]'))
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] CHECK CONSTRAINT [FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterial]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterial]'))
ALTER TABLE [dbo].[stlPP_ProcedureMaterial]  WITH CHECK ADD  CONSTRAINT [FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPer] FOREIGN KEY([stlPP_ProcedureMaterialPerID])
REFERENCES [dbo].[stlPP_ProcedureMaterialPer] ([stlPP_ProcedureMaterialPerID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPer]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterial]'))
ALTER TABLE [dbo].[stlPP_ProcedureMaterial] CHECK CONSTRAINT [FK_stlPP_ProcedureMaterial_stlPP_ProcedureMaterialPer]
