SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vpakrk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vpakrk__](
	[vpkrkref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpkrkrpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[calcul__] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[orient__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[varoms_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[varoms_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[varoms_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[varunit1] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[varunit2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[varunit3] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vpakrki0] PRIMARY KEY CLUSTERED 
(
	[vpkrkref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__vpkrkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__vpkrkref]  DEFAULT ('') FOR [vpkrkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__vpkrkrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__vpkrkrpn]  DEFAULT ('') FOR [vpkrkrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__calcul__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__calcul__]  DEFAULT ('') FOR [calcul__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__orient__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__orient__]  DEFAULT ('') FOR [orient__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varoms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varoms_1]  DEFAULT ('') FOR [varoms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varoms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varoms_2]  DEFAULT ('') FOR [varoms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varoms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varoms_3]  DEFAULT ('') FOR [varoms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varunit1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varunit1]  DEFAULT ('') FOR [varunit1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varunit2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varunit2]  DEFAULT ('') FOR [varunit2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakrk__varunit3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakrk__] ADD  CONSTRAINT [DF_vpakrk__varunit3]  DEFAULT ('') FOR [varunit3]
END

