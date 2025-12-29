SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgclt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgclt__](
	[afgclref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inleesnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__inv] [date] NOT NULL,
	[loc__stk] [float] NOT NULL,
	[pr_exclv] [float] NOT NULL,
	[pr_inclv] [float] NOT NULL,
	[pr_exclo] [float] NOT NULL,
	[pr_inclo] [float] NOT NULL,
	[stafflpr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[strtkstv] [float] NOT NULL,
	[plwlkstv] [float] NOT NULL,
	[klwlkstv] [float] NOT NULL,
	[strtksto] [float] NOT NULL,
	[plwlksto] [float] NOT NULL,
	[klwlksto] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_01_] [float] NOT NULL,
	[aant_02_] [float] NOT NULL,
	[aant_03_] [float] NOT NULL,
	[aant_04_] [float] NOT NULL,
	[aant_05_] [float] NOT NULL,
	[aant_06_] [float] NOT NULL,
	[aant_07_] [float] NOT NULL,
	[aant_08_] [float] NOT NULL,
	[aant_09_] [float] NOT NULL,
	[aant_10_] [float] NOT NULL,
	[aant_11_] [float] NOT NULL,
	[aant_12_] [float] NOT NULL,
	[aant_13_] [float] NOT NULL,
	[aant_14_] [float] NOT NULL,
	[aant_15_] [float] NOT NULL,
	[aant_16_] [float] NOT NULL,
	[aant_17_] [float] NOT NULL,
	[aant_18_] [float] NOT NULL,
	[aant_19_] [float] NOT NULL,
	[aant_20_] [float] NOT NULL,
	[aant_21_] [float] NOT NULL,
	[aant_22_] [float] NOT NULL,
	[aant_23_] [float] NOT NULL,
	[aant_24_] [float] NOT NULL,
	[aant_25_] [float] NOT NULL,
	[aant_26_] [float] NOT NULL,
	[aant_27_] [float] NOT NULL,
	[aant_28_] [float] NOT NULL,
	[aant_29_] [float] NOT NULL,
	[aant_30_] [float] NOT NULL,
	[aant_31_] [float] NOT NULL,
	[aant_32_] [float] NOT NULL,
	[prys_01v] [float] NOT NULL,
	[prys_02v] [float] NOT NULL,
	[prys_03v] [float] NOT NULL,
	[prys_04v] [float] NOT NULL,
	[prys_05v] [float] NOT NULL,
	[prys_06v] [float] NOT NULL,
	[prys_07v] [float] NOT NULL,
	[prys_08v] [float] NOT NULL,
	[prys_09v] [float] NOT NULL,
	[prys_10v] [float] NOT NULL,
	[prys_11v] [float] NOT NULL,
	[prys_12v] [float] NOT NULL,
	[prys_13v] [float] NOT NULL,
	[prys_14v] [float] NOT NULL,
	[prys_15v] [float] NOT NULL,
	[prys_16v] [float] NOT NULL,
	[prys_17v] [float] NOT NULL,
	[prys_18v] [float] NOT NULL,
	[prys_19v] [float] NOT NULL,
	[prys_20v] [float] NOT NULL,
	[prys_21v] [float] NOT NULL,
	[prys_22v] [float] NOT NULL,
	[prys_23v] [float] NOT NULL,
	[prys_24v] [float] NOT NULL,
	[prys_25v] [float] NOT NULL,
	[prys_26v] [float] NOT NULL,
	[prys_27v] [float] NOT NULL,
	[prys_28v] [float] NOT NULL,
	[prys_29v] [float] NOT NULL,
	[prys_30v] [float] NOT NULL,
	[prys_31v] [float] NOT NULL,
	[prys_32v] [float] NOT NULL,
	[prys_01o] [float] NOT NULL,
	[prys_02o] [float] NOT NULL,
	[prys_03o] [float] NOT NULL,
	[prys_04o] [float] NOT NULL,
	[prys_05o] [float] NOT NULL,
	[prys_06o] [float] NOT NULL,
	[prys_07o] [float] NOT NULL,
	[prys_08o] [float] NOT NULL,
	[prys_09o] [float] NOT NULL,
	[prys_10o] [float] NOT NULL,
	[prys_11o] [float] NOT NULL,
	[prys_12o] [float] NOT NULL,
	[prys_13o] [float] NOT NULL,
	[prys_14o] [float] NOT NULL,
	[prys_15o] [float] NOT NULL,
	[prys_16o] [float] NOT NULL,
	[prys_17o] [float] NOT NULL,
	[prys_18o] [float] NOT NULL,
	[prys_19o] [float] NOT NULL,
	[prys_20o] [float] NOT NULL,
	[prys_21o] [float] NOT NULL,
	[prys_22o] [float] NOT NULL,
	[prys_23o] [float] NOT NULL,
	[prys_24o] [float] NOT NULL,
	[prys_25o] [float] NOT NULL,
	[prys_26o] [float] NOT NULL,
	[prys_27o] [float] NOT NULL,
	[prys_28o] [float] NOT NULL,
	[prys_29o] [float] NOT NULL,
	[prys_30o] [float] NOT NULL,
	[prys_31o] [float] NOT NULL,
	[prys_32o] [float] NOT NULL,
	[pry01ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry02ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry03ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry04ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry05ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry06ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry07ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry08ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry09ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry10ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry11ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry12ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry13ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry14ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry15ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry16ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry17ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry18ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry19ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry20ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry21ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry22ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry23ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry24ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry25ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry26ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry27ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry28ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry29ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry30ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry31ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry32ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_afcl] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[afgclref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgclt__]') AND name = N'id2_afcl')
CREATE UNIQUE NONCLUSTERED INDEX [id2_afcl] ON [dbo].[afgclt__]
(
	[kla__ref] ASC,
	[zynrefkl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgclt__]') AND name = N'id3_afcl')
CREATE NONCLUSTERED INDEX [id3_afcl] ON [dbo].[afgclt__]
(
	[afg__ref] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__afgclref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__afgclref]  DEFAULT ('') FOR [afgclref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__inleesnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__inleesnr]  DEFAULT ('') FOR [inleesnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__vdt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__vdt__ref]  DEFAULT ('') FOR [vdt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__dat__inv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__dat__inv]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__inv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__loc__stk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__loc__stk]  DEFAULT ((0)) FOR [loc__stk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pr_exclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pr_exclo]  DEFAULT ((0)) FOR [pr_exclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pr_inclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pr_inclo]  DEFAULT ((0)) FOR [pr_inclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__stafflpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__stafflpr]  DEFAULT ('') FOR [stafflpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__strtkstv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__strtkstv]  DEFAULT ((0)) FOR [strtkstv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__plwlkstv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__plwlkstv]  DEFAULT ((0)) FOR [plwlkstv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__klwlkstv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__klwlkstv]  DEFAULT ((0)) FOR [klwlkstv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__strtksto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__strtksto]  DEFAULT ((0)) FOR [strtksto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__plwlksto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__plwlksto]  DEFAULT ((0)) FOR [plwlksto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__klwlksto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__klwlksto]  DEFAULT ((0)) FOR [klwlksto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_01_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_01_]  DEFAULT ((0)) FOR [aant_01_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_02_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_02_]  DEFAULT ((0)) FOR [aant_02_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_03_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_03_]  DEFAULT ((0)) FOR [aant_03_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_04_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_04_]  DEFAULT ((0)) FOR [aant_04_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_05_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_05_]  DEFAULT ((0)) FOR [aant_05_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_06_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_06_]  DEFAULT ((0)) FOR [aant_06_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_07_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_07_]  DEFAULT ((0)) FOR [aant_07_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_08_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_08_]  DEFAULT ((0)) FOR [aant_08_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_09_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_09_]  DEFAULT ((0)) FOR [aant_09_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_10_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_10_]  DEFAULT ((0)) FOR [aant_10_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_11_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_11_]  DEFAULT ((0)) FOR [aant_11_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_12_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_12_]  DEFAULT ((0)) FOR [aant_12_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_13_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_13_]  DEFAULT ((0)) FOR [aant_13_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_14_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_14_]  DEFAULT ((0)) FOR [aant_14_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_15_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_15_]  DEFAULT ((0)) FOR [aant_15_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_16_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_16_]  DEFAULT ((0)) FOR [aant_16_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_17_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_17_]  DEFAULT ((0)) FOR [aant_17_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_18_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_18_]  DEFAULT ((0)) FOR [aant_18_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_19_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_19_]  DEFAULT ((0)) FOR [aant_19_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_20_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_20_]  DEFAULT ((0)) FOR [aant_20_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_21_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_21_]  DEFAULT ((0)) FOR [aant_21_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_22_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_22_]  DEFAULT ((0)) FOR [aant_22_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_23_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_23_]  DEFAULT ((0)) FOR [aant_23_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_24_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_24_]  DEFAULT ((0)) FOR [aant_24_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_25_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_25_]  DEFAULT ((0)) FOR [aant_25_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_26_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_26_]  DEFAULT ((0)) FOR [aant_26_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_27_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_27_]  DEFAULT ((0)) FOR [aant_27_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_28_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_28_]  DEFAULT ((0)) FOR [aant_28_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_29_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_29_]  DEFAULT ((0)) FOR [aant_29_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_30_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_30_]  DEFAULT ((0)) FOR [aant_30_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_31_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_31_]  DEFAULT ((0)) FOR [aant_31_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__aant_32_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__aant_32_]  DEFAULT ((0)) FOR [aant_32_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_01v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_01v]  DEFAULT ((0)) FOR [prys_01v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_02v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_02v]  DEFAULT ((0)) FOR [prys_02v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_03v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_03v]  DEFAULT ((0)) FOR [prys_03v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_04v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_04v]  DEFAULT ((0)) FOR [prys_04v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_05v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_05v]  DEFAULT ((0)) FOR [prys_05v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_06v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_06v]  DEFAULT ((0)) FOR [prys_06v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_07v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_07v]  DEFAULT ((0)) FOR [prys_07v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_08v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_08v]  DEFAULT ((0)) FOR [prys_08v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_09v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_09v]  DEFAULT ((0)) FOR [prys_09v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_10v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_10v]  DEFAULT ((0)) FOR [prys_10v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_11v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_11v]  DEFAULT ((0)) FOR [prys_11v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_12v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_12v]  DEFAULT ((0)) FOR [prys_12v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_13v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_13v]  DEFAULT ((0)) FOR [prys_13v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_14v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_14v]  DEFAULT ((0)) FOR [prys_14v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_15v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_15v]  DEFAULT ((0)) FOR [prys_15v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_16v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_16v]  DEFAULT ((0)) FOR [prys_16v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_17v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_17v]  DEFAULT ((0)) FOR [prys_17v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_18v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_18v]  DEFAULT ((0)) FOR [prys_18v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_19v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_19v]  DEFAULT ((0)) FOR [prys_19v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_20v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_20v]  DEFAULT ((0)) FOR [prys_20v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_21v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_21v]  DEFAULT ((0)) FOR [prys_21v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_22v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_22v]  DEFAULT ((0)) FOR [prys_22v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_23v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_23v]  DEFAULT ((0)) FOR [prys_23v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_24v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_24v]  DEFAULT ((0)) FOR [prys_24v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_25v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_25v]  DEFAULT ((0)) FOR [prys_25v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_26v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_26v]  DEFAULT ((0)) FOR [prys_26v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_27v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_27v]  DEFAULT ((0)) FOR [prys_27v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_28v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_28v]  DEFAULT ((0)) FOR [prys_28v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_29v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_29v]  DEFAULT ((0)) FOR [prys_29v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_30v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_30v]  DEFAULT ((0)) FOR [prys_30v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_31v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_31v]  DEFAULT ((0)) FOR [prys_31v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_32v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_32v]  DEFAULT ((0)) FOR [prys_32v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_01o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_01o]  DEFAULT ((0)) FOR [prys_01o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_02o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_02o]  DEFAULT ((0)) FOR [prys_02o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_03o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_03o]  DEFAULT ((0)) FOR [prys_03o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_04o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_04o]  DEFAULT ((0)) FOR [prys_04o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_05o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_05o]  DEFAULT ((0)) FOR [prys_05o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_06o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_06o]  DEFAULT ((0)) FOR [prys_06o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_07o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_07o]  DEFAULT ((0)) FOR [prys_07o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_08o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_08o]  DEFAULT ((0)) FOR [prys_08o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_09o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_09o]  DEFAULT ((0)) FOR [prys_09o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_10o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_10o]  DEFAULT ((0)) FOR [prys_10o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_11o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_11o]  DEFAULT ((0)) FOR [prys_11o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_12o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_12o]  DEFAULT ((0)) FOR [prys_12o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_13o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_13o]  DEFAULT ((0)) FOR [prys_13o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_14o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_14o]  DEFAULT ((0)) FOR [prys_14o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_15o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_15o]  DEFAULT ((0)) FOR [prys_15o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_16o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_16o]  DEFAULT ((0)) FOR [prys_16o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_17o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_17o]  DEFAULT ((0)) FOR [prys_17o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_18o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_18o]  DEFAULT ((0)) FOR [prys_18o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_19o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_19o]  DEFAULT ((0)) FOR [prys_19o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_20o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_20o]  DEFAULT ((0)) FOR [prys_20o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_21o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_21o]  DEFAULT ((0)) FOR [prys_21o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_22o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_22o]  DEFAULT ((0)) FOR [prys_22o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_23o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_23o]  DEFAULT ((0)) FOR [prys_23o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_24o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_24o]  DEFAULT ((0)) FOR [prys_24o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_25o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_25o]  DEFAULT ((0)) FOR [prys_25o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_26o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_26o]  DEFAULT ((0)) FOR [prys_26o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_27o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_27o]  DEFAULT ((0)) FOR [prys_27o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_28o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_28o]  DEFAULT ((0)) FOR [prys_28o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_29o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_29o]  DEFAULT ((0)) FOR [prys_29o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_30o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_30o]  DEFAULT ((0)) FOR [prys_30o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_31o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_31o]  DEFAULT ((0)) FOR [prys_31o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__prys_32o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__prys_32o]  DEFAULT ((0)) FOR [prys_32o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry01ref]  DEFAULT ('') FOR [pry01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry02ref]  DEFAULT ('') FOR [pry02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry03ref]  DEFAULT ('') FOR [pry03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry04ref]  DEFAULT ('') FOR [pry04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry05ref]  DEFAULT ('') FOR [pry05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry06ref]  DEFAULT ('') FOR [pry06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry07ref]  DEFAULT ('') FOR [pry07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry08ref]  DEFAULT ('') FOR [pry08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry09ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry09ref]  DEFAULT ('') FOR [pry09ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry10ref]  DEFAULT ('') FOR [pry10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry11ref]  DEFAULT ('') FOR [pry11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry12ref]  DEFAULT ('') FOR [pry12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry13ref]  DEFAULT ('') FOR [pry13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry14ref]  DEFAULT ('') FOR [pry14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry15ref]  DEFAULT ('') FOR [pry15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry16ref]  DEFAULT ('') FOR [pry16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry17ref]  DEFAULT ('') FOR [pry17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry18ref]  DEFAULT ('') FOR [pry18ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry19ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry19ref]  DEFAULT ('') FOR [pry19ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry20ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry20ref]  DEFAULT ('') FOR [pry20ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry21ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry21ref]  DEFAULT ('') FOR [pry21ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry22ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry22ref]  DEFAULT ('') FOR [pry22ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry23ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry23ref]  DEFAULT ('') FOR [pry23ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry24ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry24ref]  DEFAULT ('') FOR [pry24ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry25ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry25ref]  DEFAULT ('') FOR [pry25ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry26ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry26ref]  DEFAULT ('') FOR [pry26ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry27ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry27ref]  DEFAULT ('') FOR [pry27ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry28ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry28ref]  DEFAULT ('') FOR [pry28ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry29ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry29ref]  DEFAULT ('') FOR [pry29ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry30ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry30ref]  DEFAULT ('') FOR [pry30ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry31ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry31ref]  DEFAULT ('') FOR [pry31ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__pry32ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__pry32ref]  DEFAULT ('') FOR [pry32ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgclt__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgclt__] ADD  CONSTRAINT [DF_afgclt__dossier_]  DEFAULT ('') FOR [dossier_]
END

