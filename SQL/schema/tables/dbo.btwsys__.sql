SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[btwsys__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[btwsys__](
	[btw__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[code__v5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[active__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_iso] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwval_1] [float] NOT NULL,
	[btwval_2] [float] NOT NULL,
	[btwval_3] [float] NOT NULL,
	[btwval_4] [float] NOT NULL,
	[btwval_5] [float] NOT NULL,
	[vkpoms_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpoms_7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkptyp_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpoms_7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akptyp_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[use__btw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[use__stx] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxoms_7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stxtyp_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rnd__typ] [int] NOT NULL,
	[vkpvlg_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpvlg_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cn___typ] [int] NOT NULL,
	[tot__typ] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[stx_edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [btwsysi1] PRIMARY KEY CLUSTERED 
(
	[btw__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btw__ref]  DEFAULT ('') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__code__v5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__code__v5]  DEFAULT ('0') FOR [code__v5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__active__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__active__]  DEFAULT ('N') FOR [active__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__land_iso]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__land_iso]  DEFAULT ('') FOR [land_iso]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btwval_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btwval_1]  DEFAULT ((0)) FOR [btwval_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btwval_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btwval_2]  DEFAULT ((0)) FOR [btwval_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btwval_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btwval_3]  DEFAULT ((0)) FOR [btwval_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btwval_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btwval_4]  DEFAULT ((0)) FOR [btwval_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__btwval_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__btwval_5]  DEFAULT ((0)) FOR [btwval_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_1]  DEFAULT ('') FOR [vkpoms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_2]  DEFAULT ('') FOR [vkpoms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_3]  DEFAULT ('') FOR [vkpoms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_4]  DEFAULT ('') FOR [vkpoms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_5]  DEFAULT ('') FOR [vkpoms_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_6]  DEFAULT ('') FOR [vkpoms_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpoms_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpoms_7]  DEFAULT ('') FOR [vkpoms_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_1]  DEFAULT ('') FOR [vkptyp_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_2]  DEFAULT ('') FOR [vkptyp_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_3]  DEFAULT ('') FOR [vkptyp_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_4]  DEFAULT ('') FOR [vkptyp_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_5]  DEFAULT ('') FOR [vkptyp_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_6]  DEFAULT ('') FOR [vkptyp_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkptyp_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkptyp_7]  DEFAULT ('') FOR [vkptyp_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_1]  DEFAULT ('') FOR [akpoms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_2]  DEFAULT ('') FOR [akpoms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_3]  DEFAULT ('') FOR [akpoms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_4]  DEFAULT ('') FOR [akpoms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_5]  DEFAULT ('') FOR [akpoms_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_6]  DEFAULT ('') FOR [akpoms_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akpoms_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akpoms_7]  DEFAULT ('') FOR [akpoms_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_1]  DEFAULT ('') FOR [akptyp_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_2]  DEFAULT ('') FOR [akptyp_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_3]  DEFAULT ('') FOR [akptyp_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_4]  DEFAULT ('') FOR [akptyp_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_5]  DEFAULT ('') FOR [akptyp_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_6]  DEFAULT ('') FOR [akptyp_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__akptyp_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__akptyp_7]  DEFAULT ('') FOR [akptyp_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__use__btw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__use__btw]  DEFAULT ('N') FOR [use__btw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__use__stx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__use__stx]  DEFAULT ('N') FOR [use__stx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_1]  DEFAULT ('') FOR [stxoms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_2]  DEFAULT ('') FOR [stxoms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_3]  DEFAULT ('') FOR [stxoms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_4]  DEFAULT ('') FOR [stxoms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_5]  DEFAULT ('') FOR [stxoms_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_6]  DEFAULT ('') FOR [stxoms_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxoms_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxoms_7]  DEFAULT ('') FOR [stxoms_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_1]  DEFAULT ('') FOR [stxtyp_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_2]  DEFAULT ('') FOR [stxtyp_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_3]  DEFAULT ('') FOR [stxtyp_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_4]  DEFAULT ('') FOR [stxtyp_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_5]  DEFAULT ('') FOR [stxtyp_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_6]  DEFAULT ('') FOR [stxtyp_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stxtyp_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stxtyp_7]  DEFAULT ('') FOR [stxtyp_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__rnd__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__rnd__typ]  DEFAULT ((0)) FOR [rnd__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_1]  DEFAULT ('0') FOR [vkpvlg_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_2]  DEFAULT ('0') FOR [vkpvlg_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_3]  DEFAULT ('0') FOR [vkpvlg_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_4]  DEFAULT ('0') FOR [vkpvlg_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_5]  DEFAULT ('0') FOR [vkpvlg_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_6]  DEFAULT ('0') FOR [vkpvlg_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__vkpvlg_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__vkpvlg_7]  DEFAULT ('0') FOR [vkpvlg_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__cn___typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__cn___typ]  DEFAULT ((0)) FOR [cn___typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__tot__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__tot__typ]  DEFAULT ((0)) FOR [tot__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwsys__stx_edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwsys__] ADD  CONSTRAINT [DF_btwsys__stx_edi__ref]  DEFAULT ('') FOR [stx_edi__ref]
END

