SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprsiv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprsiv__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prsivref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__vrb] [float] NOT NULL,
	[inkmnvrb] [float] NOT NULL,
	[inkvsvrb] [float] NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pctinkgw] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprsivi0] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[klpmsref] ASC,
	[prsivref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__prsivref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__prsivref]  DEFAULT ('') FOR [prsivref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__ink__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__ink__vrb]  DEFAULT ((0)) FOR [ink__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__inkmnvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__inkmnvrb]  DEFAULT ((0)) FOR [inkmnvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__inkvsvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__inkvsvrb]  DEFAULT ((0)) FOR [inkvsvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsiv__pctinkgw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsiv__] ADD  CONSTRAINT [DF_eprsiv__pctinkgw]  DEFAULT ((0)) FOR [pctinkgw]
END

