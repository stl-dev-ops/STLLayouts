SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plnvrb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plnvrb__](
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[factor__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plnvrbi0] PRIMARY KEY CLUSTERED 
(
	[pldv_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnvrb__pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnvrb__] ADD  CONSTRAINT [DF_plnvrb__pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnvrb__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnvrb__] ADD  CONSTRAINT [DF_plnvrb__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnvrb__factor__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnvrb__] ADD  CONSTRAINT [DF_plnvrb__factor__]  DEFAULT ((0)) FOR [factor__]
END

