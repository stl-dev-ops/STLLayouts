SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bstvfr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bstvfr__](
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr_r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedr__vm] [float] NOT NULL,
	[bedr__bm] [float] NOT NULL,
	[grtbkcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bstvfri1] PRIMARY KEY CLUSTERED 
(
	[bst__ref] ASC,
	[volgnr__] ASC,
	[volgnr_r] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__volgnr_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__volgnr_r]  DEFAULT ('') FOR [volgnr_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfr__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfr__] ADD  CONSTRAINT [DF_bstvfr__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

