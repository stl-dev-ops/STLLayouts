SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dcamap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dcamap__](
	[deviceid] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[cost__id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[activ_id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobrelat] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [dcamapi0] PRIMARY KEY CLUSTERED 
(
	[deviceid] ASC,
	[cost__id] ASC,
	[activ_id] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__cost__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__cost__id]  DEFAULT ('') FOR [cost__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__activ_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__activ_id]  DEFAULT ('') FOR [activ_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__jobrelat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__jobrelat]  DEFAULT ('') FOR [jobrelat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__ordergeb]  DEFAULT ('Y') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dcamap__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dcamap__] ADD  CONSTRAINT [DF_dcamap__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

