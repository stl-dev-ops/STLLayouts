SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vrzlok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vrzlok__](
	[grp__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vrzlok_1] PRIMARY KEY CLUSTERED 
(
	[grp__ref] ASC,
	[vrz__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzlok__grp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzlok__] ADD  CONSTRAINT [DF_vrzlok__grp__ref]  DEFAULT ('') FOR [grp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzlok__vrz__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzlok__] ADD  CONSTRAINT [DF_vrzlok__vrz__ref]  DEFAULT ('') FOR [vrz__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzlok__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzlok__] ADD  CONSTRAINT [DF_vrzlok__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzlok__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzlok__] ADD  CONSTRAINT [DF_vrzlok__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzlok__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzlok__] ADD  CONSTRAINT [DF_vrzlok__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

