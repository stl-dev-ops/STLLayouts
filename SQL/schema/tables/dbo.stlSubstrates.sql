SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSubstrates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSubstrates](
	[SubstrateID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[FaceSheetID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[AdhesiveID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[LinerID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[Blocked] [tinyint] NOT NULL,
 CONSTRAINT [PK_stlSubstrates] PRIMARY KEY CLUSTERED 
(
	[SubstrateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSubstrates]') AND name = N'IX_stlSubstrates_AdhesiveID')
CREATE NONCLUSTERED INDEX [IX_stlSubstrates_AdhesiveID] ON [dbo].[stlSubstrates]
(
	[AdhesiveID] ASC
)
INCLUDE([SubstrateID],[FaceSheetID],[LinerID],[Blocked]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSubstrates]') AND name = N'IX_stlSubstrates_Blocked')
CREATE NONCLUSTERED INDEX [IX_stlSubstrates_Blocked] ON [dbo].[stlSubstrates]
(
	[Blocked] ASC
)
INCLUDE([SubstrateID],[FaceSheetID],[AdhesiveID],[LinerID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSubstrates]') AND name = N'IX_stlSubstrates_FacesheetID')
CREATE NONCLUSTERED INDEX [IX_stlSubstrates_FacesheetID] ON [dbo].[stlSubstrates]
(
	[FaceSheetID] ASC
)
INCLUDE([SubstrateID],[AdhesiveID],[LinerID],[Blocked]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSubstrates]') AND name = N'IX_stlSubstrates_LinerID')
CREATE NONCLUSTERED INDEX [IX_stlSubstrates_LinerID] ON [dbo].[stlSubstrates]
(
	[LinerID] ASC
)
INCLUDE([SubstrateID],[FaceSheetID],[AdhesiveID],[Blocked]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
