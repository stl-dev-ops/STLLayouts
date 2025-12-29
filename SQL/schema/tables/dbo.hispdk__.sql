SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hispdk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hispdk__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pkst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[adr__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[adknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvolgen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__trg] [date] NOT NULL,
	[dat_wtrg] [date] NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hispdki0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__pkst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__pkst_ref]  DEFAULT ('') FOR [pkst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__adr__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__adr__srt]  DEFAULT ('') FOR [adr__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__klknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__klknpref]  DEFAULT ('') FOR [klknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__lvknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__lvknpref]  DEFAULT ('') FOR [lvknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__adknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__adknpref]  DEFAULT ('') FOR [adknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__btp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__btp__ref]  DEFAULT ('') FOR [btp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__opvolgen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__opvolgen]  DEFAULT ('') FOR [opvolgen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__dat__trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__dat__trg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__dat_wtrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__dat_wtrg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_wtrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispdk__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispdk__] ADD  CONSTRAINT [DF_hispdk__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

