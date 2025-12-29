SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chlvrg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chlvrg__](
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [int] NOT NULL,
	[omschr__] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[service_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[refbykla] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[level___] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[samples_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[procedur] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](90) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk1__10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[chk2__10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [chlv_id1] PRIMARY KEY CLUSTERED 
(
	[vrg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__volgnr__]  DEFAULT ((-1)) FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__service_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__service_]  DEFAULT ('') FOR [service_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__refbykla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__refbykla]  DEFAULT ('') FOR [refbykla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__level___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__level___]  DEFAULT ('') FOR [level___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__samples_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__samples_]  DEFAULT ('') FOR [samples_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__procedur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__procedur]  DEFAULT ('') FOR [procedur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__01]  DEFAULT ('') FOR [chk1__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__02]  DEFAULT ('') FOR [chk1__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__03]  DEFAULT ('') FOR [chk1__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__04]  DEFAULT ('') FOR [chk1__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__05]  DEFAULT ('') FOR [chk1__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__06]  DEFAULT ('') FOR [chk1__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__07]  DEFAULT ('') FOR [chk1__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__08]  DEFAULT ('') FOR [chk1__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__09]  DEFAULT ('') FOR [chk1__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk1__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk1__10]  DEFAULT ('') FOR [chk1__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__01]  DEFAULT ('') FOR [chk2__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__02]  DEFAULT ('') FOR [chk2__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__03]  DEFAULT ('') FOR [chk2__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__04]  DEFAULT ('') FOR [chk2__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__05]  DEFAULT ('') FOR [chk2__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__06]  DEFAULT ('') FOR [chk2__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__07]  DEFAULT ('') FOR [chk2__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__08]  DEFAULT ('') FOR [chk2__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__09]  DEFAULT ('') FOR [chk2__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chlvrg__chk2__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chlvrg__] ADD  CONSTRAINT [DF_chlvrg__chk2__10]  DEFAULT ('') FOR [chk2__10]
END

