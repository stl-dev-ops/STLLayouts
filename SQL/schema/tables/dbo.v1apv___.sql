SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1apv___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1apv___](
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[apvklarf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[apvknprf] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1apv_i0] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC,
	[apvklarf] ASC,
	[apvknprf] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1apv___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1apv___] ADD  CONSTRAINT [DF_v1apv___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1apv___apvklarf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1apv___] ADD  CONSTRAINT [DF_v1apv___apvklarf]  DEFAULT ('') FOR [apvklarf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1apv___apvknprf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1apv___] ADD  CONSTRAINT [DF_v1apv___apvknprf]  DEFAULT ('') FOR [apvknprf]
END

