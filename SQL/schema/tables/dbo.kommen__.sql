SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kommen__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kommen__](
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kommen_x] PRIMARY KEY CLUSTERED 
(
	[kom__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommen__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommen__] ADD  CONSTRAINT [DF_kommen__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommen__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommen__] ADD  CONSTRAINT [DF_kommen__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommen__kom__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommen__] ADD  CONSTRAINT [DF_kommen__kom__srt]  DEFAULT ('') FOR [kom__srt]
END

