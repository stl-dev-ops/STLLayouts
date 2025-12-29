SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stnsbk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stnsbk__](
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stnsbki1] PRIMARY KEY CLUSTERED 
(
	[stns_ref] ASC,
	[prd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbk__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbk__] ADD  CONSTRAINT [DF_stnsbk__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbk__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbk__] ADD  CONSTRAINT [DF_stnsbk__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

