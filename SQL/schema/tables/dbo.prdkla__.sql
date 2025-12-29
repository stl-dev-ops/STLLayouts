SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdkla__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdkla__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prdklai0] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[prd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdkla__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdkla__] ADD  CONSTRAINT [DF_prdkla__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdkla__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdkla__] ADD  CONSTRAINT [DF_prdkla__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

