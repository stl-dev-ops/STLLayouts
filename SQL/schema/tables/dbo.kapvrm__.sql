SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kapvrm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kapvrm__](
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynreflv] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokatie_] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__bin] [date] NOT NULL,
	[typedoos] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[status__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[formaatl] [float] NOT NULL,
	[formaatb] [float] NOT NULL,
	[formaath] [float] NOT NULL,
	[cadcam__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eerstmes] [float] NOT NULL,
	[laatstmesy] [float] NOT NULL,
	[eerstmesx] [float] NOT NULL,
	[laatstmesx] [float] NOT NULL,
	[mxbrekrt] [float] NOT NULL,
	[mes_fmt1] [float] NOT NULL,
	[mes_fmt2] [float] NOT NULL,
	[krt_fmt1] [float] NOT NULL,
	[krt_fmt2] [float] NOT NULL,
	[cutting_length] [float] NOT NULL,
	[creasing_length] [float] NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramm___] [float] NOT NULL,
	[diktemic] [int] NOT NULL,
	[tsssnt_h] [float] NOT NULL,
	[tsssnt_v] [float] NOT NULL,
	[poses__x] [int] NOT NULL,
	[poses__y] [int] NOT NULL,
	[perflijm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fadelhk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lymklprd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rlstbodm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[extafm_a] [float] NOT NULL,
	[extafm_b] [float] NOT NULL,
	[extafm_g] [float] NOT NULL,
	[extafm_h] [float] NOT NULL,
	[extafm_k] [float] NOT NULL,
	[extafm_l] [float] NOT NULL,
	[extafml1] [float] NOT NULL,
	[extafml2] [float] NOT NULL,
	[extafm_w] [float] NOT NULL,
	[mesflmyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mesflm__] [int] NOT NULL,
	[mesflm_k] [float] NOT NULL,
	[mesflmdt] [date] NOT NULL,
	[kapvrmyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kapvrm__] [int] NOT NULL,
	[kapvrm_k] [float] NOT NULL,
	[rubberyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rubber__] [int] NOT NULL,
	[rubber_k] [float] NOT NULL,
	[dummy_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dummy___] [int] NOT NULL,
	[dummy__k] [float] NOT NULL,
	[rilmtryn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rilmtr__] [int] NOT NULL,
	[rilmtr_k] [float] NOT NULL,
	[penplayn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[penplank] [float] NOT NULL,
	[brkplayn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brkplank] [float] NOT NULL,
	[toestvyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestvel] [float] NOT NULL,
	[prg_koyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prg_kost] [float] NOT NULL,
	[blinddyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blinddrk] [float] NOT NULL,
	[extra_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[extra___] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[extra_ex] [int] NOT NULL,
	[extra__k] [float] NOT NULL,
	[stansplt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stansdat] [date] NOT NULL,
	[stanskst] [float] NOT NULL,
	[sepvrmyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sepvrm_k] [float] NOT NULL,
	[front_waste_sepyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[front_waste_sep_k] [float] NOT NULL,
	[allowed_rotate] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout_style] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ref__vrm] PRIMARY KEY CLUSTERED 
(
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__zynreflv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__zynreflv]  DEFAULT ('') FOR [zynreflv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__lokatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__lokatie_]  DEFAULT ('') FOR [lokatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__dat__bin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__dat__bin]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__bin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__typedoos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__typedoos]  DEFAULT ('') FOR [typedoos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__formaatl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__formaatl]  DEFAULT ((0)) FOR [formaatl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__formaatb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__formaatb]  DEFAULT ((0)) FOR [formaatb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__formaath]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__formaath]  DEFAULT ((0)) FOR [formaath]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__cadcam__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__cadcam__]  DEFAULT ('') FOR [cadcam__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__eerstmes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__eerstmes]  DEFAULT ((0)) FOR [eerstmes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__laatstmesy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__laatstmesy]  DEFAULT ((0)) FOR [laatstmesy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__eerstmesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__eerstmesx]  DEFAULT ((0)) FOR [eerstmesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__laatstmesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__laatstmesx]  DEFAULT ((0)) FOR [laatstmesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mxbrekrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mxbrekrt]  DEFAULT ((0)) FOR [mxbrekrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mes_fmt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mes_fmt1]  DEFAULT ((0)) FOR [mes_fmt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mes_fmt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mes_fmt2]  DEFAULT ((0)) FOR [mes_fmt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__krt_fmt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__krt_fmt1]  DEFAULT ((0)) FOR [krt_fmt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__krt_fmt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__krt_fmt2]  DEFAULT ((0)) FOR [krt_fmt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__cutting_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__cutting_length]  DEFAULT ((0)) FOR [cutting_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__creasing_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__creasing_length]  DEFAULT ((0)) FOR [creasing_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__gramm___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__gramm___]  DEFAULT ((0)) FOR [gramm___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__tsssnt_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__tsssnt_h]  DEFAULT ((0)) FOR [tsssnt_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__tsssnt_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__tsssnt_v]  DEFAULT ((0)) FOR [tsssnt_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__poses__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__poses__x]  DEFAULT ((0)) FOR [poses__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__poses__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__poses__y]  DEFAULT ((0)) FOR [poses__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__perflijm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__perflijm]  DEFAULT ('') FOR [perflijm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__fadelhk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__fadelhk_]  DEFAULT ('') FOR [fadelhk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__lymklprd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__lymklprd]  DEFAULT ('') FOR [lymklprd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rlstbodm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rlstbodm]  DEFAULT ('') FOR [rlstbodm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__looprich]  DEFAULT ('') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_a]  DEFAULT ((0)) FOR [extafm_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_b]  DEFAULT ((0)) FOR [extafm_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_g]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_g]  DEFAULT ((0)) FOR [extafm_g]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_h]  DEFAULT ((0)) FOR [extafm_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_k]  DEFAULT ((0)) FOR [extafm_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_l]  DEFAULT ((0)) FOR [extafm_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafml1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafml1]  DEFAULT ((0)) FOR [extafml1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafml2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafml2]  DEFAULT ((0)) FOR [extafml2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extafm_w]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extafm_w]  DEFAULT ((0)) FOR [extafm_w]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mesflmyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mesflmyn]  DEFAULT ('') FOR [mesflmyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mesflm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mesflm__]  DEFAULT ((0)) FOR [mesflm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mesflm_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mesflm_k]  DEFAULT ((0)) FOR [mesflm_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__mesflmdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__mesflmdt]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [mesflmdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__kapvrmyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__kapvrmyn]  DEFAULT ('') FOR [kapvrmyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__kapvrm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__kapvrm__]  DEFAULT ((0)) FOR [kapvrm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__kapvrm_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__kapvrm_k]  DEFAULT ((0)) FOR [kapvrm_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rubberyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rubberyn]  DEFAULT ('') FOR [rubberyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rubber__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rubber__]  DEFAULT ((0)) FOR [rubber__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rubber_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rubber_k]  DEFAULT ((0)) FOR [rubber_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__dummy_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__dummy_yn]  DEFAULT ('') FOR [dummy_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__dummy___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__dummy___]  DEFAULT ((0)) FOR [dummy___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__dummy__k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__dummy__k]  DEFAULT ((0)) FOR [dummy__k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rilmtryn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rilmtryn]  DEFAULT ('') FOR [rilmtryn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rilmtr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rilmtr__]  DEFAULT ((0)) FOR [rilmtr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__rilmtr_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__rilmtr_k]  DEFAULT ((0)) FOR [rilmtr_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__penplayn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__penplayn]  DEFAULT ('') FOR [penplayn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__penplank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__penplank]  DEFAULT ((0)) FOR [penplank]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__brkplayn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__brkplayn]  DEFAULT ('') FOR [brkplayn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__brkplank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__brkplank]  DEFAULT ((0)) FOR [brkplank]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__toestvyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__toestvyn]  DEFAULT ('') FOR [toestvyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__toestvel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__toestvel]  DEFAULT ((0)) FOR [toestvel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__prg_koyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__prg_koyn]  DEFAULT ('') FOR [prg_koyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__prg_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__prg_kost]  DEFAULT ((0)) FOR [prg_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__blinddyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__blinddyn]  DEFAULT ('') FOR [blinddyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__blinddrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__blinddrk]  DEFAULT ((0)) FOR [blinddrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extra_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extra_yn]  DEFAULT ('') FOR [extra_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extra___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extra___]  DEFAULT ('') FOR [extra___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extra_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extra_ex]  DEFAULT ((0)) FOR [extra_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__extra__k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__extra__k]  DEFAULT ((0)) FOR [extra__k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__stansplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__stansplt]  DEFAULT ('') FOR [stansplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__stansdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__stansdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [stansdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__stanskst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__stanskst]  DEFAULT ((0)) FOR [stanskst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__sepvrmyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__sepvrmyn]  DEFAULT ('') FOR [sepvrmyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__sepvrm_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__sepvrm_k]  DEFAULT ((0)) FOR [sepvrm_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__front_waste_sepyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__front_waste_sepyn]  DEFAULT ('') FOR [front_waste_sepyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__front_waste_sep_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__front_waste_sep_k]  DEFAULT ((0)) FOR [front_waste_sep_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__allowed_rotate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__allowed_rotate]  DEFAULT ('') FOR [allowed_rotate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kapvrm__layout_style]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kapvrm__] ADD  CONSTRAINT [DF_kapvrm__layout_style]  DEFAULT ('') FOR [layout_style]
END

