SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_variant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp_variant__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [arthlp_varianti0] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC,
	[arth_var__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant__] ADD  CONSTRAINT [DF_arthlp_variant__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant__arth_var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant__] ADD  CONSTRAINT [DF_arthlp_variant__arth_var__ref]  DEFAULT ('') FOR [arth_var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant__] ADD  CONSTRAINT [DF_arthlp_variant__omschr__]  DEFAULT ('') FOR [omschr__]
END

