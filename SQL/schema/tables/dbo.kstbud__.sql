SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kstbud__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kstbud__](
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstb_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktief__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kstbudi1] PRIMARY KEY CLUSTERED 
(
	[kstb_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__kstb_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__kstb_rpn]  DEFAULT ('') FOR [kstb_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__vast____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__vast____]  DEFAULT ('') FOR [vast____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__aktief__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__aktief__]  DEFAULT ('') FOR [aktief__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstbud__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstbud__] ADD  CONSTRAINT [DF_kstbud__dossier_]  DEFAULT ('') FOR [dossier_]
END

