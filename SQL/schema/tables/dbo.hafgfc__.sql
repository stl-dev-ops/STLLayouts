SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hafgfc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hafgfc__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr_c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[basis_bm] [float] NOT NULL,
	[basis_vm] [float] NOT NULL,
	[vast__bm] [float] NOT NULL,
	[vast__vm] [float] NOT NULL,
	[kommiss_] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hafgfci1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[volgnr_c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__volgnr_c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__volgnr_c]  DEFAULT ('') FOR [volgnr_c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__basis_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__basis_bm]  DEFAULT ((0)) FOR [basis_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__basis_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__basis_vm]  DEFAULT ((0)) FOR [basis_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__vast__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__vast__bm]  DEFAULT ((0)) FOR [vast__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__vast__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__vast__vm]  DEFAULT ((0)) FOR [vast__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfc__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfc__] ADD  CONSTRAINT [DF_hafgfc__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

