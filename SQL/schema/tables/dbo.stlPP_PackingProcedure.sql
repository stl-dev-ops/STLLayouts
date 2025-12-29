SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_PackingProcedure](
	[stlPP_PackingProcedureID] [int] IDENTITY(1,1) NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlPP_ProductUnitID] [int] NOT NULL,
	[stlPP_PackingUnitID] [int] NOT NULL,
	[stlPP_NumPerStyleID] [int] NOT NULL,
	[fixedQty] [int] NOT NULL,
	[box_art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[spoolWidth] [float] NOT NULL,
	[spoolOD] [float] NOT NULL,
	[noOfflineFinishing] [bit] NOT NULL,
 CONSTRAINT [PK_stlPP_PackingProcedure] PRIMARY KEY CLUSTERED 
(
	[stlPP_PackingProcedureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_vpak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_vpak__ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_stlPP_ProductUnitID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_stlPP_ProductUnitID]  DEFAULT ((0)) FOR [stlPP_ProductUnitID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_stlPP_PackingUnitID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_stlPP_PackingUnitID]  DEFAULT ((0)) FOR [stlPP_PackingUnitID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_stlPP_NumPerStyleID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_stlPP_NumPerStyleID]  DEFAULT ((0)) FOR [stlPP_NumPerStyleID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_fixedNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_fixedNumber]  DEFAULT ((0)) FOR [fixedQty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_box_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_box_art__ref]  DEFAULT ('') FOR [box_art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_spoolWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_spoolWidth]  DEFAULT ((0)) FOR [spoolWidth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_spoolOD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_spoolOD]  DEFAULT ((0)) FOR [spoolOD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingProcedure_noOfflineFinishing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingProcedure] ADD  CONSTRAINT [DF_stlPP_PackingProcedure_noOfflineFinishing]  DEFAULT ((0)) FOR [noOfflineFinishing]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_NumPerStyle]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure]  WITH CHECK ADD  CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_NumPerStyle] FOREIGN KEY([stlPP_NumPerStyleID])
REFERENCES [dbo].[stlPP_NumPerStyle] ([stlPP_NumPerStyleID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_NumPerStyle]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure] CHECK CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_NumPerStyle]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_PackingUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure]  WITH CHECK ADD  CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_PackingUnit] FOREIGN KEY([stlPP_PackingUnitID])
REFERENCES [dbo].[stlPP_PackingUnit] ([stlPP_PackingUnitID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_PackingUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure] CHECK CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_PackingUnit]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_ProductUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure]  WITH CHECK ADD  CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_ProductUnit] FOREIGN KEY([stlPP_ProductUnitID])
REFERENCES [dbo].[stlPP_ProductUnit] ([stlPP_ProductUnitID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPP_PackingProcedure_stlPP_ProductUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPP_PackingProcedure]'))
ALTER TABLE [dbo].[stlPP_PackingProcedure] CHECK CONSTRAINT [FK_stlPP_PackingProcedure_stlPP_ProductUnit]
