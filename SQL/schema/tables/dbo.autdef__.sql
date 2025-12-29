SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autdef__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autdef__](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[colname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[groupdef] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfx_tag] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[key_length] [smallint] NOT NULL,
 CONSTRAINT [autdefi1] PRIMARY KEY CLUSTERED 
(
	[tabname_] ASC,
	[colname_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autdef__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autdef__] ADD  CONSTRAINT [DF_autdef__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autdef__colname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autdef__] ADD  CONSTRAINT [DF_autdef__colname_]  DEFAULT ('') FOR [colname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autdef__groupdef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autdef__] ADD  CONSTRAINT [DF_autdef__groupdef]  DEFAULT ('') FOR [groupdef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autdef__prfx_tag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autdef__] ADD  CONSTRAINT [DF_autdef__prfx_tag]  DEFAULT ('') FOR [prfx_tag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autdef__key_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autdef__] ADD  CONSTRAINT [DF_autdef__key_length]  DEFAULT ((0)) FOR [key_length]
END

