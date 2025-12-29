SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planpl_similar_machine__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planpl_similar_machine__](
	[similar_machine_id] [int] NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref_similar] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[condition] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [planpl_similar_machinei0] PRIMARY KEY CLUSTERED 
(
	[similar_machine_id] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__similar_machine_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__similar_machine_id]  DEFAULT ((0)) FOR [similar_machine_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__type]  DEFAULT ('') FOR [type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__plpl_ref_similar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__plpl_ref_similar]  DEFAULT ('') FOR [plpl_ref_similar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_similar_machine__condition]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_similar_machine__] ADD  CONSTRAINT [DF_planpl_similar_machine__condition]  DEFAULT ('') FOR [condition]
END

