SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kart__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kart__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2karti0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[art__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kart__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kart__] ADD  CONSTRAINT [DF_v2kart__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kart__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kart__] ADD  CONSTRAINT [DF_v2kart__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kart__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kart__] ADD  CONSTRAINT [DF_v2kart__art__ref]  DEFAULT ('') FOR [art__ref]
END

