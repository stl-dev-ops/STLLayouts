SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pfl_____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pfl_____](
	[pfl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfl__rpn] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__acc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pfl___i0] PRIMARY KEY CLUSTERED 
(
	[pfl__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pfl_____pfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pfl_____] ADD  CONSTRAINT [DF_pfl_____pfl__ref]  DEFAULT ('') FOR [pfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pfl_____pfl__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pfl_____] ADD  CONSTRAINT [DF_pfl_____pfl__rpn]  DEFAULT ('') FOR [pfl__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pfl_____omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pfl_____] ADD  CONSTRAINT [DF_pfl_____omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pfl_____typ__acc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pfl_____] ADD  CONSTRAINT [DF_pfl_____typ__acc]  DEFAULT ('') FOR [typ__acc]
END

