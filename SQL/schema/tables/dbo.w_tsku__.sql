SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_tsku__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_tsku__](
	[artd_ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[soortsku] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_tell] [date] NOT NULL,
	[uur_tell] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_tsku_1] PRIMARY KEY CLUSTERED 
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__soortsku]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__soortsku]  DEFAULT ('') FOR [soortsku]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__dat_tell]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__dat_tell]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_tell]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_tsku__uur_tell]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_tsku__] ADD  CONSTRAINT [DF_w_tsku__uur_tell]  DEFAULT ('') FOR [uur_tell]
END

