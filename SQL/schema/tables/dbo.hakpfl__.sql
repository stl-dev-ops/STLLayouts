SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hakpfl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hakpfl__](
	[akp__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fakl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[toc__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[faant___] [float] NOT NULL,
	[faant__2] [float] NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[tot___vm] [float] NOT NULL,
	[tot___bm] [float] NOT NULL,
	[fpry1_vm] [float] NOT NULL,
	[fpry1_bm] [float] NOT NULL,
	[fpry2_vm] [float] NOT NULL,
	[fpry2_bm] [float] NOT NULL,
	[kom__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakkom_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakkom_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hakpfli1] PRIMARY KEY CLUSTERED 
(
	[akp__ref] ASC,
	[fakl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hakpfl__]') AND name = N'hakpfli2')
CREATE NONCLUSTERED INDEX [hakpfli2] ON [dbo].[hakpfl__]
(
	[type____] ASC,
	[levr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hakpfl__]') AND name = N'hakpfli3')
CREATE NONCLUSTERED INDEX [hakpfli3] ON [dbo].[hakpfl__]
(
	[type____] ASC,
	[bon__ref] ASC,
	[lyn__ref] ASC,
	[levr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hakpfl__]') AND name = N'hakpfli4')
CREATE NONCLUSTERED INDEX [hakpfli4] ON [dbo].[hakpfl__]
(
	[type____] ASC,
	[lyn__ref] ASC,
	[toc__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__akp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__akp__ref]  DEFAULT ('') FOR [akp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fakl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fakl_ref]  DEFAULT ('') FOR [fakl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__levr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__levr_ref]  DEFAULT ('') FOR [levr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__toc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__toc__ref]  DEFAULT ('') FOR [toc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__faant__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__faant__2]  DEFAULT ((0)) FOR [faant__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__tot___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__tot___vm]  DEFAULT ((0)) FOR [tot___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__tot___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__tot___bm]  DEFAULT ((0)) FOR [tot___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fpry1_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fpry1_vm]  DEFAULT ((0)) FOR [fpry1_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fpry1_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fpry1_bm]  DEFAULT ((0)) FOR [fpry1_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fpry2_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fpry2_vm]  DEFAULT ((0)) FOR [fpry2_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__fpry2_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__fpry2_bm]  DEFAULT ((0)) FOR [fpry2_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__nakkom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__nakkom_1]  DEFAULT ('') FOR [nakkom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__nakkom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__nakkom_2]  DEFAULT ('') FOR [nakkom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfl__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfl__] ADD  CONSTRAINT [DF_hakpfl__produktf]  DEFAULT ('') FOR [produktf]
END

