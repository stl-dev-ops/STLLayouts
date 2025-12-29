SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klaapv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klaapv__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[apvklarf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[apvknprf] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klaapvi0] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[apvklarf] ASC,
	[apvknprf] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaapv__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaapv__] ADD  CONSTRAINT [DF_klaapv__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaapv__apvklarf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaapv__] ADD  CONSTRAINT [DF_klaapv__apvklarf]  DEFAULT ('') FOR [apvklarf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaapv__apvknprf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaapv__] ADD  CONSTRAINT [DF_klaapv__apvknprf]  DEFAULT ('') FOR [apvknprf]
END

