SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stdeap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stdeap__](
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_stop] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_kern] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl____w] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___in] [float] NOT NULL,
	[stl_p_in] [float] NOT NULL,
	[lilo__in] [float] NOT NULL,
	[stl___t2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl__in2] [float] NOT NULL,
	[lilo_in2] [float] NOT NULL,
	[stl_pmin] [float] NOT NULL,
	[mxspd___] [int] NOT NULL,
	[mxspdd__] [float] NOT NULL,
	[invlspd_] [float] NOT NULL,
	[spd__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal_b] [int] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[afwp1lok] [float] NOT NULL,
	[afwp1mak] [float] NOT NULL,
	[afwp1ovk] [float] NOT NULL,
	[afwp1tot] [float] NOT NULL,
	[afwp2lok] [float] NOT NULL,
	[afwp2mak] [float] NOT NULL,
	[afwp2ovk] [float] NOT NULL,
	[afwp2tot] [float] NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__afw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[etapkomm] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_1] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_2] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_3] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_4] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_5] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_6] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_7] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_8] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_9] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[rolb__mx] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__afw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__opv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktr_arth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bld__rot] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opodgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drktoren] [int] NOT NULL,
	[rlweti_i] [float] NOT NULL,
	[rlweti_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rlw__lin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prysvorm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stdeapi1] PRIMARY KEY CLUSTERED 
(
	[etap_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__etap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__etap_ref]  DEFAULT ('') FOR [etap_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__etap_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__etap_typ]  DEFAULT ('1') FOR [etap_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__reken___]  DEFAULT ('1') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__etas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__etas_ref]  DEFAULT ('') FOR [etas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__tyd_stop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__tyd_stop]  DEFAULT ('  0:00') FOR [tyd_stop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__tyd_kern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__tyd_kern]  DEFAULT ('  0:00') FOR [tyd_kern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl____t]  DEFAULT ('  0:00') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl____w]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl____w]  DEFAULT ('  0:00') FOR [stl____w]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl_p_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl_p_in]  DEFAULT ((0)) FOR [stl_p_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__lilo__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__lilo__in]  DEFAULT ((0)) FOR [lilo__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl___t2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl___t2]  DEFAULT ('  0:00') FOR [stl___t2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl__in2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl__in2]  DEFAULT ((0)) FOR [stl__in2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__lilo_in2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__lilo_in2]  DEFAULT ((0)) FOR [lilo_in2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__stl_pmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__stl_pmin]  DEFAULT ((0)) FOR [stl_pmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__mxspd___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__mxspd___]  DEFAULT ((0)) FOR [mxspd___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__mxspdd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__mxspdd__]  DEFAULT ((99999.00)) FOR [mxspdd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__invlspd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__invlspd_]  DEFAULT ((0)) FOR [invlspd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__spd__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__spd__srt]  DEFAULT ('1') FOR [spd__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__aantal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__aantal_b]  DEFAULT ((0)) FOR [aantal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp1lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp1lok]  DEFAULT ((0)) FOR [afwp1lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp1mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp1mak]  DEFAULT ((0)) FOR [afwp1mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp1ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp1ovk]  DEFAULT ((0)) FOR [afwp1ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp1tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp1tot]  DEFAULT ((0)) FOR [afwp1tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp2lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp2lok]  DEFAULT ((0)) FOR [afwp2lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp2mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp2mak]  DEFAULT ((0)) FOR [afwp2mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp2ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp2ovk]  DEFAULT ((0)) FOR [afwp2ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__afwp2tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__afwp2tot]  DEFAULT ((0)) FOR [afwp2tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rbk__afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rbk__afw]  DEFAULT ('0') FOR [rbk__afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__etapkomm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__etapkomm]  DEFAULT ('') FOR [etapkomm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__aant_pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__aant_pag]  DEFAULT ('0') FOR [aant_pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_1]  DEFAULT ('') FOR [kombrf_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_2]  DEFAULT ('') FOR [kombrf_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_3]  DEFAULT ('') FOR [kombrf_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_4]  DEFAULT ('') FOR [kombrf_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_5]  DEFAULT ('') FOR [kombrf_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_6]  DEFAULT ('') FOR [kombrf_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_7]  DEFAULT ('') FOR [kombrf_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_8]  DEFAULT ('') FOR [kombrf_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__kombrf_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__kombrf_9]  DEFAULT ('') FOR [kombrf_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rolb__mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rolb__mx]  DEFAULT ((0)) FOR [rolb__mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__drg__afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__drg__afw]  DEFAULT ('Y') FOR [drg__afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__drg__opv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__drg__opv]  DEFAULT ('N') FOR [drg__opv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__ktr_arth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__ktr_arth]  DEFAULT ('N') FOR [ktr_arth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__bld__rot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__bld__rot]  DEFAULT ('N') FOR [bld__rot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__opo__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__opo__ref]  DEFAULT ('') FOR [opo__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__opo2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__opo2_ref]  DEFAULT ('') FOR [opo2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__opodgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__opodgref]  DEFAULT ('') FOR [opodgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__drktoren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__drktoren]  DEFAULT ((0)) FOR [drktoren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rlweti_i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rlweti_i]  DEFAULT ((0)) FOR [rlweti_i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rlweti_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rlweti_t]  DEFAULT ('  0:00') FOR [rlweti_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__rlw__lin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__rlw__lin]  DEFAULT ('Y') FOR [rlw__lin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeap__prysvorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeap__] ADD  CONSTRAINT [DF_stdeap__prysvorm]  DEFAULT ((0)) FOR [prysvorm]
END

