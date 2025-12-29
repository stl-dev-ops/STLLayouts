SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gegdet__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gegdet__](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_num] [float] NOT NULL,
	[antw_dat] [date] NOT NULL,
	[antw_txt] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[removed] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gegdeti0] PRIMARY KEY CLUSTERED 
(
	[tabname_] ASC,
	[det__ref] ASC,
	[vrg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__antw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__antw_ref]  DEFAULT ('') FOR [antw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__antw_num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__antw_num]  DEFAULT ((0)) FOR [antw_num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__antw_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__antw_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [antw_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__antw_txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__antw_txt]  DEFAULT ('') FOR [antw_txt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdet__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdet__] ADD  CONSTRAINT [DF_gegdet__removed]  DEFAULT ((0)) FOR [removed]
END

