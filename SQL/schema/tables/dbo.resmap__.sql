SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resmap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[resmap__](
	[deviceid] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod__id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[convfact] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [resmapi0] PRIMARY KEY CLUSTERED 
(
	[deviceid] ASC,
	[prod__id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resmap__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resmap__] ADD  CONSTRAINT [DF_resmap__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resmap__prod__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resmap__] ADD  CONSTRAINT [DF_resmap__prod__id]  DEFAULT ('') FOR [prod__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resmap__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resmap__] ADD  CONSTRAINT [DF_resmap__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resmap__convfact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resmap__] ADD  CONSTRAINT [DF_resmap__convfact]  DEFAULT ((0)) FOR [convfact]
END

