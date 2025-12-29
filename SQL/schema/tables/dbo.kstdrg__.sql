SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kstdrg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kstdrg__](
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_rek] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__srt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kstdrgi1] PRIMARY KEY CLUSTERED 
(
	[kstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__kstd_ref]  DEFAULT ('') FOR [kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__kstd_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__kstd_rpn]  DEFAULT ('') FOR [kstd_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__kstd_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__kstd_rek]  DEFAULT ('') FOR [kstd_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__kst__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__kst__srt]  DEFAULT ('') FOR [kst__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstdrg__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstdrg__] ADD  CONSTRAINT [DF_kstdrg__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

