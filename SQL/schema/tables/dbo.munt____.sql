SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[munt____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[munt____](
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koersvkp] [float] NOT NULL,
	[koersakp] [float] NOT NULL,
	[koersfio] [float] NOT NULL,
	[koerseur] [float] NOT NULL,
	[munt_eur] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lchg_dat] [date] NOT NULL,
	[ref_v45_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_munt] PRIMARY KEY CLUSTERED 
(
	[munt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____koersvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____koersvkp]  DEFAULT ((0)) FOR [koersvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____koersakp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____koersakp]  DEFAULT ((0)) FOR [koersakp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____koersfio]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____koersfio]  DEFAULT ((0)) FOR [koersfio]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____koerseur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____koerseur]  DEFAULT ((1.0)) FOR [koerseur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____munt_eur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____munt_eur]  DEFAULT ('2') FOR [munt_eur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____lchg_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____lchg_dat]  DEFAULT (CONVERT([date],'19900101',(112))) FOR [lchg_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____ref_v45_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____ref_v45_]  DEFAULT ('') FOR [ref_v45_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_munt____geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[munt____] ADD  CONSTRAINT [DF_munt____geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

