SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[phoenix_export__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[phoenix_export__](
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[export_id] [int] NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[preset] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[filename] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[blocked] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [phoenix_exporti0] PRIMARY KEY CLUSTERED 
(
	[edi__ref] ASC,
	[export_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__export_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__export_id]  DEFAULT ((0)) FOR [export_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__type]  DEFAULT ('') FOR [type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__preset]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__preset]  DEFAULT ('') FOR [preset]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__filename]  DEFAULT ('') FOR [filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_phoenix_export__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[phoenix_export__] ADD  CONSTRAINT [DF_phoenix_export__blocked]  DEFAULT ((0)) FOR [blocked]
END

