SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opkcat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[opkcat__](
	[opk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk__vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk_show] [int] NOT NULL,
	[opk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__typ] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant01] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant02] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant03] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant04] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant05] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant06] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant07] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant08] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant09] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant10] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant11] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant12] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant13] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant14] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant15] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant16] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant17] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant18] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant19] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opkant20] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[impl_typ] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [opkcat_1] PRIMARY KEY CLUSTERED 
(
	[opk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opk__ref]  DEFAULT ('') FOR [opk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opk__vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opk__vrg]  DEFAULT ('') FOR [opk__vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opk_show]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opk_show]  DEFAULT ((0)) FOR [opk_show]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opk__typ]  DEFAULT ('') FOR [opk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__ant__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__ant__typ]  DEFAULT ('') FOR [ant__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant01]  DEFAULT ('') FOR [opkant01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant02]  DEFAULT ('') FOR [opkant02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant03]  DEFAULT ('') FOR [opkant03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant04]  DEFAULT ('') FOR [opkant04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant05]  DEFAULT ('') FOR [opkant05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant06]  DEFAULT ('') FOR [opkant06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant07]  DEFAULT ('') FOR [opkant07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant08]  DEFAULT ('') FOR [opkant08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant09]  DEFAULT ('') FOR [opkant09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant10]  DEFAULT ('') FOR [opkant10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant11]  DEFAULT ('') FOR [opkant11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant12]  DEFAULT ('') FOR [opkant12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant13]  DEFAULT ('') FOR [opkant13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant14]  DEFAULT ('') FOR [opkant14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant15]  DEFAULT ('') FOR [opkant15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant16]  DEFAULT ('') FOR [opkant16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant17]  DEFAULT ('') FOR [opkant17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant18]  DEFAULT ('') FOR [opkant18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant19]  DEFAULT ('') FOR [opkant19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__opkant20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__opkant20]  DEFAULT ('') FOR [opkant20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opkcat__impl_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opkcat__] ADD  CONSTRAINT [DF_opkcat__impl_typ]  DEFAULT ('') FOR [impl_typ]
END

