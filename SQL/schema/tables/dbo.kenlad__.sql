SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kenlad__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kenlad__](
	[kenlad__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_klad] PRIMARY KEY CLUSTERED 
(
	[kenlad__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kenlad__kenlad__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kenlad__] ADD  CONSTRAINT [DF_kenlad__kenlad__]  DEFAULT ('') FOR [kenlad__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kenlad__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kenlad__] ADD  CONSTRAINT [DF_kenlad__omschr__]  DEFAULT ('') FOR [omschr__]
END

