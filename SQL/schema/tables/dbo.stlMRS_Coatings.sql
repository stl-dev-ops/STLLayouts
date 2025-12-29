SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Coatings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Coatings](
	[stlMRS_CoatingsID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[reserve_] [float] NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr___nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[pass] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMRS_Coatings] PRIMARY KEY CLUSTERED 
(
	[stlMRS_CoatingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_reserve_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_reserve_]  DEFAULT ((0)) FOR [reserve_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_klr___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_klr___nr]  DEFAULT ('') FOR [klr___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Coatings_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Coatings] ADD  CONSTRAINT [DF_stlMRS_Coatings_pass]  DEFAULT ('') FOR [pass]
END

