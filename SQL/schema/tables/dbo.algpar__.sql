SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[algpar__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[algpar__](
	[dos_oms_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnv__ver] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnv__rel] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnv_fail] [int] NOT NULL,
	[brand___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[custlogo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfl_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[versienr] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[release_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[access__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dbs__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__acc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[adreslay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afdeling] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gemeente] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telex___] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[hand_reg] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxfmt__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxpfx__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gs1_prfx] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[sscc_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sscc_box] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sscc_pal] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[destinat] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[auth_nws] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cpio_in_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[cpio_out] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[sys_curr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sys__btw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_tgt] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdoss__] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[journal_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pnt_loon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lever_oa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dest_rvk] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[trf__rvk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hnam_rvk] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[hdir_rvk] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dosnum] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirtmp] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirasc] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirimg] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirlay] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirgpf] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dircf1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dircf2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirbta] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirofb] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirobv] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6diroab] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirdoc] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6host__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6port__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6email_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6lang_9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod1] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod2] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod3] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod4] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod5] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod6] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod7] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod8] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taalcod9] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal6] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal7] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal8] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laytaal9] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang1] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang2] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang3] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang4] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang5] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang6] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang7] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang8] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang9] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [algpari0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__dos_oms_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__dos_oms_]  DEFAULT ('') FOR [dos_oms_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__cnv__ver]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__cnv__ver]  DEFAULT ('') FOR [cnv__ver]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__cnv__rel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__cnv__rel]  DEFAULT ('') FOR [cnv__rel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__cnv_fail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__cnv_fail]  DEFAULT ((0)) FOR [cnv_fail]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__brand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__brand___]  DEFAULT ('') FOR [brand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__custlogo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__custlogo]  DEFAULT ('') FOR [custlogo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__pfl_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__pfl_name]  DEFAULT ('') FOR [pfl_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__versienr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__versienr]  DEFAULT ('') FOR [versienr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__release_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__release_]  DEFAULT ('') FOR [release_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__access__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__access__]  DEFAULT ('') FOR [access__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__dbs__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__dbs__typ]  DEFAULT ('') FOR [dbs__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__unit_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__unit_typ]  DEFAULT ('') FOR [unit_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__typ__acc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__typ__acc]  DEFAULT ('') FOR [typ__acc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__adreslay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__adreslay]  DEFAULT ('') FOR [adreslay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__afdeling]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__afdeling]  DEFAULT ('') FOR [afdeling]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__gemeente]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__gemeente]  DEFAULT ('') FOR [gemeente]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__telex___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__telex___]  DEFAULT ('') FOR [telex___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__hand_reg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__hand_reg]  DEFAULT ('') FOR [hand_reg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__faxfmt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__faxfmt__]  DEFAULT ('') FOR [faxfmt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__faxpfx__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__faxpfx__]  DEFAULT ('') FOR [faxpfx__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__gs1_prfx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__gs1_prfx]  DEFAULT ('') FOR [gs1_prfx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__sscc_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__sscc_rol]  DEFAULT ('') FOR [sscc_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__sscc_box]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__sscc_box]  DEFAULT ('') FOR [sscc_box]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__sscc_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__sscc_pal]  DEFAULT ('') FOR [sscc_pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__destinat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__destinat]  DEFAULT ('') FOR [destinat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__auth_nws]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__auth_nws]  DEFAULT ('') FOR [auth_nws]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__cpio_in_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__cpio_in_]  DEFAULT ('') FOR [cpio_in_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__cpio_out]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__cpio_out]  DEFAULT ('') FOR [cpio_out]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__sys_curr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__sys_curr]  DEFAULT ('') FOR [sys_curr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__sys__btw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__sys__btw]  DEFAULT ('') FOR [sys__btw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__doss_tgt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__doss_tgt]  DEFAULT ('') FOR [doss_tgt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__prdoss__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__prdoss__]  DEFAULT ('') FOR [prdoss__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__journal_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__journal_]  DEFAULT ('') FOR [journal_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__pnt_loon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__pnt_loon]  DEFAULT ('') FOR [pnt_loon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__lever_oa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__lever_oa]  DEFAULT ('') FOR [lever_oa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__dest_rvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__dest_rvk]  DEFAULT ('') FOR [dest_rvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__trf__rvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__trf__rvk]  DEFAULT ('') FOR [trf__rvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__hnam_rvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__hnam_rvk]  DEFAULT ('') FOR [hnam_rvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__hdir_rvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__hdir_rvk]  DEFAULT ('') FOR [hdir_rvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dosnum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dosnum]  DEFAULT ('') FOR [v6dosnum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirtmp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirtmp]  DEFAULT ('') FOR [v6dirtmp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirasc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirasc]  DEFAULT ('') FOR [v6dirasc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirimg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirimg]  DEFAULT ('') FOR [v6dirimg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirlay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirlay]  DEFAULT ('') FOR [v6dirlay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirgpf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirgpf]  DEFAULT ('') FOR [v6dirgpf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dircf1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dircf1]  DEFAULT ('') FOR [v6dircf1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dircf2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dircf2]  DEFAULT ('') FOR [v6dircf2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirbta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirbta]  DEFAULT ('') FOR [v6dirbta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirofb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirofb]  DEFAULT ('') FOR [v6dirofb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirobv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirobv]  DEFAULT ('') FOR [v6dirobv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6diroab]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6diroab]  DEFAULT ('') FOR [v6diroab]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6dirdoc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6dirdoc]  DEFAULT ('') FOR [v6dirdoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6host__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6host__]  DEFAULT ('') FOR [v6host__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6port__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6port__]  DEFAULT ('') FOR [v6port__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6email_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6email_]  DEFAULT ('') FOR [v6email_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_1]  DEFAULT ('') FOR [v6lang_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_2]  DEFAULT ('') FOR [v6lang_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_3]  DEFAULT ('') FOR [v6lang_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_4]  DEFAULT ('') FOR [v6lang_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_5]  DEFAULT ('') FOR [v6lang_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_6]  DEFAULT ('') FOR [v6lang_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_7]  DEFAULT ('') FOR [v6lang_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_8]  DEFAULT ('') FOR [v6lang_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__v6lang_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__v6lang_9]  DEFAULT ('') FOR [v6lang_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod1]  DEFAULT ('') FOR [taalcod1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod2]  DEFAULT ('') FOR [taalcod2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod3]  DEFAULT ('') FOR [taalcod3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod4]  DEFAULT ('') FOR [taalcod4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod5]  DEFAULT ('') FOR [taalcod5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod6]  DEFAULT ('') FOR [taalcod6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod7]  DEFAULT ('') FOR [taalcod7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod8]  DEFAULT ('') FOR [taalcod8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__taalcod9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__taalcod9]  DEFAULT ('') FOR [taalcod9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal1]  DEFAULT ('') FOR [laytaal1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal2]  DEFAULT ('') FOR [laytaal2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal3]  DEFAULT ('') FOR [laytaal3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal4]  DEFAULT ('') FOR [laytaal4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal5]  DEFAULT ('') FOR [laytaal5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal6]  DEFAULT ('') FOR [laytaal6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal7]  DEFAULT ('') FOR [laytaal7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal8]  DEFAULT ('') FOR [laytaal8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__laytaal9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__laytaal9]  DEFAULT ('') FOR [laytaal9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang1]  DEFAULT ('') FOR [isolang1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang2]  DEFAULT ('') FOR [isolang2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang3]  DEFAULT ('') FOR [isolang3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang4]  DEFAULT ('') FOR [isolang4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang5]  DEFAULT ('') FOR [isolang5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang6]  DEFAULT ('') FOR [isolang6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang7]  DEFAULT ('') FOR [isolang7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang8]  DEFAULT ('') FOR [isolang8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algpar__isolang9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algpar__] ADD  CONSTRAINT [DF_algpar__isolang9]  DEFAULT ('') FOR [isolang9]
END

