SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Label]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_Label](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[FaceSheetMaterialTypeID] [int] NOT NULL,
	[AdhesiveTypeID] [int] NOT NULL,
	[LinerMaterialTypeID] [int] NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__rpn] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys__m2] [float] NOT NULL,
	[Ink] [tinyint] NOT NULL,
	[AggressiveAdhesive] [tinyint] NOT NULL,
	[PreventLabelLift] [tinyint] NOT NULL,
	[HardToBondSurface] [tinyint] NOT NULL,
	[TestingRequired] [tinyint] NOT NULL,
	[Millimeters] [tinyint] NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stn_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[WidthAcross] [float] NOT NULL,
	[GapAcross] [float] NOT NULL,
	[LengthAround] [float] NOT NULL,
	[GapAround] [float] NOT NULL,
	[LabelsPerRoll] [int] NOT NULL,
	[NumberAcross] [int] NOT NULL,
	[WebWidth] [float] NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[CardTypeID] [int] NOT NULL,
	[ClearBorder] [tinyint] NOT NULL,
	[FullBleed] [tinyint] NOT NULL,
	[Leaders] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[CoreSize] [float] NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_Label] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Label]') AND name = N'IX_stlQP_Label')
CREATE NONCLUSTERED INDEX [IX_stlQP_Label] ON [dbo].[stlQP_Label]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_drg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_drg__rpn]  DEFAULT ('') FOR [drg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_BottomSubstrateMSI]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_BottomSubstrateMSI]  DEFAULT ((0)) FOR [prys__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_AggresiveAdhesive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_AggresiveAdhesive]  DEFAULT ((0)) FOR [AggressiveAdhesive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_PreventLabelLift]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_PreventLabelLift]  DEFAULT ((0)) FOR [PreventLabelLift]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_HardToBondSurface]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_HardToBondSurface]  DEFAULT ((0)) FOR [HardToBondSurface]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_TestingRequired]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_TestingRequired]  DEFAULT ((0)) FOR [TestingRequired]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_CardTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_CardTypeID]  DEFAULT ((0)) FOR [CardTypeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_ClearBorder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_ClearBorder]  DEFAULT ((0)) FOR [ClearBorder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_FullBleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_FullBleed]  DEFAULT ((0)) FOR [FullBleed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_Leaders]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_Leaders]  DEFAULT ('') FOR [Leaders]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_CoreSize]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_CoreSize]  DEFAULT ((0)) FOR [CoreSize]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Label_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Label] ADD  CONSTRAINT [DF_stlQP_Label_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

