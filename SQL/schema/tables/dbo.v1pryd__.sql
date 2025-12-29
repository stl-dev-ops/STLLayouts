SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1pryd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1pryd__](
	[pryl_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pryd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_afg] [float] NOT NULL,
	[oplage__] [float] NOT NULL,
	[vkp_eenh] [float] NOT NULL,
	[vkeenhvm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1prydi0] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC,
	[pryl_ref] ASC,
	[pryd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__pryl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__pryl_ref]  DEFAULT ('') FOR [pryl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__pryd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__pryd_ref]  DEFAULT ('') FOR [pryd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__aant_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__aant_afg]  DEFAULT ((0)) FOR [aant_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__vkp_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__vkp_eenh]  DEFAULT ((0)) FOR [vkp_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1pryd__vkeenhvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1pryd__] ADD  CONSTRAINT [DF_v1pryd__vkeenhvm]  DEFAULT ((0)) FOR [vkeenhvm]
END

