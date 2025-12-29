SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdfmt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdfmt__](
	[prd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlprdref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prdfmti0] PRIMARY KEY CLUSTERED 
(
	[prd__ref] ASC,
	[dlprdref] ASC,
	[fmt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdfmt__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdfmt__] ADD  CONSTRAINT [DF_prdfmt__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdfmt__dlprdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdfmt__] ADD  CONSTRAINT [DF_prdfmt__dlprdref]  DEFAULT ('') FOR [dlprdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdfmt__fmt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdfmt__] ADD  CONSTRAINT [DF_prdfmt__fmt__ref]  DEFAULT ('') FOR [fmt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdfmt__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdfmt__] ADD  CONSTRAINT [DF_prdfmt__default_]  DEFAULT ('') FOR [default_]
END

