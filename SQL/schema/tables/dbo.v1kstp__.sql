SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1kstp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1kstp__](
	[stp__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stpv_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[level___] [int] NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [int] NOT NULL,
	[posvrhou] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[posvrho1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[fmtstp_x] [float] NOT NULL,
	[fmtstp_y] [float] NOT NULL,
	[fmtimp_x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtimp_y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtvls_x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtvls_y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtusr_x] [float] NOT NULL,
	[fmtusr_y] [float] NOT NULL,
	[reststap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[keervorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_line] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_keu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantvast] [int] NOT NULL,
	[aantproc] [int] NOT NULL,
	[aant_prc] [float] NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny_pose] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny_trim] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[snypos_x] [int] NOT NULL,
	[snypos_y] [int] NOT NULL,
	[grijpers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstjob] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[snelheid] [float] NOT NULL,
	[score___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stel_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod2tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stel_ins] [float] NOT NULL,
	[prod_ins] [float] NOT NULL,
	[usrsttyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[usrstins] [float] NOT NULL,
	[usrprins] [float] NOT NULL,
	[usrprspd] [float] NOT NULL,
	[usr__pak] [float] NOT NULL,
	[usrsnede] [int] NOT NULL,
	[ch_stins] [float] NOT NULL,
	[ch_prins] [float] NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_vrb] [float] NOT NULL,
	[afwg_opv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb___m2] [float] NOT NULL,
	[vrb2__m2] [float] NOT NULL,
	[vrb3__m2] [float] NOT NULL,
	[vrb___kg] [float] NOT NULL,
	[vrb2__kg] [float] NOT NULL,
	[vrb3__kg] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr1_vast] [float] NOT NULL,
	[pr2_vast] [float] NOT NULL,
	[pr__var_] [float] NOT NULL,
	[prm2var_] [float] NOT NULL,
	[prlmvar_] [float] NOT NULL,
	[prt_vast] [float] NOT NULL,
	[prt_pct_] [float] NOT NULL,
	[pr_vstrn] [float] NOT NULL,
	[pr_vrtrn] [float] NOT NULL,
	[bedrag__] [float] NOT NULL,
	[use_ostf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typeostf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[automat_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1kstpi1] PRIMARY KEY CLUSTERED 
(
	[vrm__ref] ASC,
	[stp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1kstp__]') AND name = N'v1kstpi2')
CREATE NONCLUSTERED INDEX [v1kstpi2] ON [dbo].[v1kstp__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1kstp__]') AND name = N'v1kstpi3')
CREATE NONCLUSTERED INDEX [v1kstpi3] ON [dbo].[v1kstp__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__stp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__stp__ref]  DEFAULT ('') FOR [stp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__stpv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__stpv_ref]  DEFAULT ('') FOR [stpv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__level___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__level___]  DEFAULT ((0)) FOR [level___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__posvrhou]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__posvrhou]  DEFAULT ('') FOR [posvrhou]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__posvrho1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__posvrho1]  DEFAULT ('') FOR [posvrho1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__dam__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__dam__ref]  DEFAULT ('') FOR [dam__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtstp_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtstp_x]  DEFAULT ((0)) FOR [fmtstp_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtstp_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtstp_y]  DEFAULT ((0)) FOR [fmtstp_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtimp_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtimp_x]  DEFAULT ('') FOR [fmtimp_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtimp_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtimp_y]  DEFAULT ('') FOR [fmtimp_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtvls_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtvls_x]  DEFAULT ('') FOR [fmtvls_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtvls_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtvls_y]  DEFAULT ('') FOR [fmtvls_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtusr_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtusr_x]  DEFAULT ((0)) FOR [fmtusr_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__fmtusr_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__fmtusr_y]  DEFAULT ((0)) FOR [fmtusr_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__reststap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__reststap]  DEFAULT ('') FOR [reststap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__keervorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__keervorm]  DEFAULT ('') FOR [keervorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afw__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afw__oms]  DEFAULT ('') FOR [afw__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afw_line]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afw_line]  DEFAULT ('') FOR [afw_line]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwp_ref]  DEFAULT ('') FOR [afwp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwp__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwp__ok]  DEFAULT ('') FOR [afwp__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwp_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwp_srt]  DEFAULT ('') FOR [afwp_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__aant_keu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__aant_keu]  DEFAULT ('') FOR [aant_keu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__aantvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__aantvast]  DEFAULT ((0)) FOR [aantvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__aantproc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__aantproc]  DEFAULT ((0)) FOR [aantproc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__aant_prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__aant_prc]  DEFAULT ((0)) FOR [aant_prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__sny_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__sny_pose]  DEFAULT ('') FOR [sny_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__sny_trim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__sny_trim]  DEFAULT ('') FOR [sny_trim]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__snypos_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__snypos_x]  DEFAULT ((0)) FOR [snypos_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__snypos_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__snypos_y]  DEFAULT ((0)) FOR [snypos_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__grijpers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__grijpers]  DEFAULT ('') FOR [grijpers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__firstjob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__firstjob]  DEFAULT ('') FOR [firstjob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__snelheid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__snelheid]  DEFAULT ((0)) FOR [snelheid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__score___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__score___]  DEFAULT ('') FOR [score___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__stel_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__stel_tyd]  DEFAULT ('') FOR [stel_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prod_tyd]  DEFAULT ('') FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prod1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prod1tyd]  DEFAULT ('') FOR [prod1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prod2tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prod2tyd]  DEFAULT ('') FOR [prod2tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__stel_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__stel_ins]  DEFAULT ((0)) FOR [stel_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prod_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prod_ins]  DEFAULT ((0)) FOR [prod_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usrsttyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usrsttyd]  DEFAULT ('') FOR [usrsttyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usrstins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usrstins]  DEFAULT ((0)) FOR [usrstins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usrprins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usrprins]  DEFAULT ((0)) FOR [usrprins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usrprspd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usrprspd]  DEFAULT ((0)) FOR [usrprspd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usr__pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usr__pak]  DEFAULT ((0)) FOR [usr__pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__usrsnede]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__usrsnede]  DEFAULT ((0)) FOR [usrsnede]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__ch_stins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__ch_stins]  DEFAULT ((0)) FOR [ch_stins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__ch_prins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__ch_prins]  DEFAULT ((0)) FOR [ch_prins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwg_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwg_vrb]  DEFAULT ((0)) FOR [afwg_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__afwg_opv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__afwg_opv]  DEFAULT ('') FOR [afwg_opv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb___m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb___m2]  DEFAULT ((0)) FOR [vrb___m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb2__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb2__m2]  DEFAULT ((0)) FOR [vrb2__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb3__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb3__m2]  DEFAULT ((0)) FOR [vrb3__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb___kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb___kg]  DEFAULT ((0)) FOR [vrb___kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb2__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb2__kg]  DEFAULT ((0)) FOR [vrb2__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__vrb3__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__vrb3__kg]  DEFAULT ((0)) FOR [vrb3__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__pr1_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__pr1_vast]  DEFAULT ((0)) FOR [pr1_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__pr2_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__pr2_vast]  DEFAULT ((0)) FOR [pr2_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__pr__var_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__pr__var_]  DEFAULT ((0)) FOR [pr__var_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prm2var_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prm2var_]  DEFAULT ((0)) FOR [prm2var_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prlmvar_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prlmvar_]  DEFAULT ((0)) FOR [prlmvar_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prt_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prt_vast]  DEFAULT ((0)) FOR [prt_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__prt_pct_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__prt_pct_]  DEFAULT ((0)) FOR [prt_pct_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__pr_vstrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__pr_vstrn]  DEFAULT ((0)) FOR [pr_vstrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__pr_vrtrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__pr_vrtrn]  DEFAULT ((0)) FOR [pr_vrtrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__use_ostf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__use_ostf]  DEFAULT ('') FOR [use_ostf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__typeostf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__typeostf]  DEFAULT ('') FOR [typeostf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kstp__automat_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kstp__] ADD  CONSTRAINT [DF_v1kstp__automat_]  DEFAULT ('') FOR [automat_]
END

