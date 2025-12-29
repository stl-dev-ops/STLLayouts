SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_CoatingFtPerLb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_CoatingFtPerLb](
	[stlCJ_CoatingFtPerLbID] [int] IDENTITY(1,1) NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[FtPerLb] [int] NOT NULL,
 CONSTRAINT [PK_stlCJ_CoatingFtPerLb] PRIMARY KEY CLUSTERED 
(
	[stlCJ_CoatingFtPerLbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CoatingFtPerLb_prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CoatingFtPerLb] ADD  CONSTRAINT [DF_stlCJ_CoatingFtPerLb_prkl_ref]  DEFAULT ('-1') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CoatingFtPerLb_omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CoatingFtPerLb] ADD  CONSTRAINT [DF_stlCJ_CoatingFtPerLb_omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CoatingFtPerLb_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CoatingFtPerLb] ADD  CONSTRAINT [DF_stlCJ_CoatingFtPerLb_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CoatingFtPerLb_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CoatingFtPerLb] ADD  CONSTRAINT [DF_stlCJ_CoatingFtPerLb_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CoatingFtPerLb_FtPerLb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CoatingFtPerLb] ADD  CONSTRAINT [DF_stlCJ_CoatingFtPerLb_FtPerLb]  DEFAULT ((0)) FOR [FtPerLb]
END

