SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prykkp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prykkp__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prykkp_1] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[prkl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykkp__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykkp__] ADD  CONSTRAINT [DF_prykkp__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykkp__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykkp__] ADD  CONSTRAINT [DF_prykkp__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prykkp__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prykkp__] ADD  CONSTRAINT [DF_prykkp__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

