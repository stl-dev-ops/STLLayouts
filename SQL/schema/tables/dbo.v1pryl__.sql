SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1pryl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1pryl__](
	[pryl_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_staf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tar_def_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1pryli0] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC,
	[pryl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__pryl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__pryl_ref]  DEFAULT ('') FOR [pryl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__crea_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__default_]  DEFAULT ('') FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__rek_staf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__rek_staf]  DEFAULT ('') FOR [rek_staf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryl__tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryl__] ADD  CONSTRAINT [DF_v1pryl__tar_def_ref]  DEFAULT ('') FOR [tar_def_ref]
END

