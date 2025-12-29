SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bkhpar__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bkhpar__](
	[abaf_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[abmk_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ainc_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vtbb_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fbob_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkkl_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fklv_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkvs_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fbks_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fbvskrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fbvslrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bwover__] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bblijst_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ckla_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[clev_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[adag_kk_] [int] NOT NULL,
	[tb_konko] [float] NOT NULL,
	[tb_betvr] [float] NOT NULL,
	[prbtwbk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[advrv_v1] [int] NOT NULL,
	[advrv_v2] [int] NOT NULL,
	[advrv_v3] [int] NOT NULL,
	[advrv_v4] [int] NOT NULL,
	[vasteboe] [float] NOT NULL,
	[proc_boe] [float] NOT NULL,
	[nalat___] [float] NOT NULL,
	[cdedosap] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbref1] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbref2] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbref3] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbref4] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbref5] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf21] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf22] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf23] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf24] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf25] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf31] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf32] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf33] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf34] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf35] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[srek0ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srek1ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srek2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srek3ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srek4ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[s_betw_c] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[s_betw_o] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[sarekref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[snaam___] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[slijndel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrefa] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrefb] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrefc] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrefd] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrefe] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf2a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf2b] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf2c] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf2d] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf2e] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf3a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf3b] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf3c] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf3d] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sdgbrf3e] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[srekaref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[scrlev__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[s_kla_vv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwvrk_0] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwvrk_6] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwvrk17] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwark__] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[dest____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[file_1__] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[file_2__] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[file_3__] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[filklact] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[destinat] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[exp__dir] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[backup__] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[aankoop_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[verkoop_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[divers__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[codes_ap] [int] NOT NULL,
	[expsplts] [int] NOT NULL,
	[layakpdc] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layakpgb] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layakpan] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvkpdc] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvkpgb] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvkpan] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laydivdc] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laydivgb] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[filakpdc] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filakpgb] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filakpan] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filvkpdc] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filvkpgb] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filvkpan] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fildivdc] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fildivgb] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[layakplv] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvkpkl] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[filakplv] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[filvkpkl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins_ddir] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmd__pre] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmd_post] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins_edit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nmbh_dir] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nmbh_cli] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lcrb_dir] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lcrb_fil] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[btervdir] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[btervfil] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[vat__num] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[digidoc_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bkhpari0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__abaf_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__abaf_rek]  DEFAULT ('') FOR [abaf_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__abmk_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__abmk_rek]  DEFAULT ('') FOR [abmk_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__ainc_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__ainc_rek]  DEFAULT ('') FOR [ainc_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__vtbb_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__vtbb_rek]  DEFAULT ('') FOR [vtbb_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fbob_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fbob_rek]  DEFAULT ('') FOR [fbob_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fkkl_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fkkl_rek]  DEFAULT ('') FOR [fkkl_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fklv_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fklv_rek]  DEFAULT ('') FOR [fklv_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fkvs_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fkvs_rek]  DEFAULT ('') FOR [fkvs_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fbks_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fbks_rek]  DEFAULT ('') FOR [fbks_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fbvskrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fbvskrek]  DEFAULT ('') FOR [fbvskrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fbvslrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fbvslrek]  DEFAULT ('') FOR [fbvslrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__bwover__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__bwover__]  DEFAULT ('') FOR [bwover__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__bblijst_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__bblijst_]  DEFAULT ('') FOR [bblijst_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__ckla_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__ckla_rek]  DEFAULT ('') FOR [ckla_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__clev_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__clev_rek]  DEFAULT ('') FOR [clev_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__adag_kk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__adag_kk_]  DEFAULT ((0)) FOR [adag_kk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__tb_konko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__tb_konko]  DEFAULT ((0)) FOR [tb_konko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__tb_betvr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__tb_betvr]  DEFAULT ((0)) FOR [tb_betvr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__prbtwbk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__prbtwbk_]  DEFAULT ('') FOR [prbtwbk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__advrv_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__advrv_v1]  DEFAULT ((0)) FOR [advrv_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__advrv_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__advrv_v2]  DEFAULT ((0)) FOR [advrv_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__advrv_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__advrv_v3]  DEFAULT ((0)) FOR [advrv_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__advrv_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__advrv_v4]  DEFAULT ((0)) FOR [advrv_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__vasteboe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__vasteboe]  DEFAULT ((0)) FOR [vasteboe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__proc_boe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__proc_boe]  DEFAULT ((0)) FOR [proc_boe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__nalat___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__nalat___]  DEFAULT ((0)) FOR [nalat___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__cdedosap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__cdedosap]  DEFAULT ('') FOR [cdedosap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbref1]  DEFAULT ('') FOR [sdgbref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbref2]  DEFAULT ('') FOR [sdgbref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbref3]  DEFAULT ('') FOR [sdgbref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbref4]  DEFAULT ('') FOR [sdgbref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbref5]  DEFAULT ('') FOR [sdgbref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf21]  DEFAULT ('') FOR [sdgbrf21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf22]  DEFAULT ('') FOR [sdgbrf22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf23]  DEFAULT ('') FOR [sdgbrf23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf24]  DEFAULT ('') FOR [sdgbrf24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf25]  DEFAULT ('') FOR [sdgbrf25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf31]  DEFAULT ('') FOR [sdgbrf31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf32]  DEFAULT ('') FOR [sdgbrf32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf33]  DEFAULT ('') FOR [sdgbrf33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf34]  DEFAULT ('') FOR [sdgbrf34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf35]  DEFAULT ('') FOR [sdgbrf35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srek0ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srek0ref]  DEFAULT ('') FOR [srek0ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srek1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srek1ref]  DEFAULT ('') FOR [srek1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srek2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srek2ref]  DEFAULT ('') FOR [srek2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srek3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srek3ref]  DEFAULT ('') FOR [srek3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srek4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srek4ref]  DEFAULT ('') FOR [srek4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__s_betw_c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__s_betw_c]  DEFAULT ('') FOR [s_betw_c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__s_betw_o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__s_betw_o]  DEFAULT ('') FOR [s_betw_o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sarekref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sarekref]  DEFAULT ('') FOR [sarekref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__snaam___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__snaam___]  DEFAULT ('') FOR [snaam___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__slijndel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__slijndel]  DEFAULT ('') FOR [slijndel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrefa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrefa]  DEFAULT ('') FOR [sdgbrefa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrefb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrefb]  DEFAULT ('') FOR [sdgbrefb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrefc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrefc]  DEFAULT ('') FOR [sdgbrefc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrefd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrefd]  DEFAULT ('') FOR [sdgbrefd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrefe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrefe]  DEFAULT ('') FOR [sdgbrefe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf2a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf2a]  DEFAULT ('') FOR [sdgbrf2a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf2b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf2b]  DEFAULT ('') FOR [sdgbrf2b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf2c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf2c]  DEFAULT ('') FOR [sdgbrf2c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf2d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf2d]  DEFAULT ('') FOR [sdgbrf2d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf2e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf2e]  DEFAULT ('') FOR [sdgbrf2e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf3a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf3a]  DEFAULT ('') FOR [sdgbrf3a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf3b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf3b]  DEFAULT ('') FOR [sdgbrf3b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf3c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf3c]  DEFAULT ('') FOR [sdgbrf3c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf3d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf3d]  DEFAULT ('') FOR [sdgbrf3d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__sdgbrf3e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__sdgbrf3e]  DEFAULT ('') FOR [sdgbrf3e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__srekaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__srekaref]  DEFAULT ('') FOR [srekaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__scrlev__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__scrlev__]  DEFAULT ('') FOR [scrlev__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__s_kla_vv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__s_kla_vv]  DEFAULT ('') FOR [s_kla_vv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btwvrk_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btwvrk_0]  DEFAULT ('') FOR [btwvrk_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btwvrk_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btwvrk_6]  DEFAULT ('') FOR [btwvrk_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btwvrk17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btwvrk17]  DEFAULT ('') FOR [btwvrk17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btwark__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btwark__]  DEFAULT ('') FOR [btwark__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__dest____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__dest____]  DEFAULT ('') FOR [dest____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__file_1__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__file_1__]  DEFAULT ('') FOR [file_1__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__file_2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__file_2__]  DEFAULT ('') FOR [file_2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__file_3__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__file_3__]  DEFAULT ('') FOR [file_3__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filklact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filklact]  DEFAULT ('') FOR [filklact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__destinat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__destinat]  DEFAULT ('') FOR [destinat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__exp__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__exp__dir]  DEFAULT ('') FOR [exp__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__backup__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__backup__]  DEFAULT ('') FOR [backup__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__aankoop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__aankoop_]  DEFAULT ('') FOR [aankoop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__verkoop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__verkoop_]  DEFAULT ('') FOR [verkoop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__divers__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__divers__]  DEFAULT ('') FOR [divers__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__codes_ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__codes_ap]  DEFAULT ((0)) FOR [codes_ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__expsplts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__expsplts]  DEFAULT ((0)) FOR [expsplts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layakpdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layakpdc]  DEFAULT ('') FOR [layakpdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layakpgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layakpgb]  DEFAULT ('') FOR [layakpgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layakpan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layakpan]  DEFAULT ('') FOR [layakpan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layvkpdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layvkpdc]  DEFAULT ('') FOR [layvkpdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layvkpgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layvkpgb]  DEFAULT ('') FOR [layvkpgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layvkpan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layvkpan]  DEFAULT ('') FOR [layvkpan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__laydivdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__laydivdc]  DEFAULT ('') FOR [laydivdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__laydivgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__laydivgb]  DEFAULT ('') FOR [laydivgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filakpdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filakpdc]  DEFAULT ('') FOR [filakpdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filakpgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filakpgb]  DEFAULT ('') FOR [filakpgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filakpan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filakpan]  DEFAULT ('') FOR [filakpan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filvkpdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filvkpdc]  DEFAULT ('') FOR [filvkpdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filvkpgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filvkpgb]  DEFAULT ('') FOR [filvkpgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filvkpan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filvkpan]  DEFAULT ('') FOR [filvkpan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fildivdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fildivdc]  DEFAULT ('') FOR [fildivdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__fildivgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__fildivgb]  DEFAULT ('') FOR [fildivgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layakplv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layakplv]  DEFAULT ('') FOR [layakplv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__layvkpkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__layvkpkl]  DEFAULT ('') FOR [layvkpkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filakplv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filakplv]  DEFAULT ('') FOR [filakplv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__filvkpkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__filvkpkl]  DEFAULT ('') FOR [filvkpkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__ins_ddir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__ins_ddir]  DEFAULT ('') FOR [ins_ddir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__cmd__pre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__cmd__pre]  DEFAULT ('') FOR [cmd__pre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__cmd_post]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__cmd_post]  DEFAULT ('') FOR [cmd_post]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__ins_edit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__ins_edit]  DEFAULT ('') FOR [ins_edit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__nmbh_dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__nmbh_dir]  DEFAULT ('') FOR [nmbh_dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__nmbh_cli]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__nmbh_cli]  DEFAULT ('') FOR [nmbh_cli]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__lcrb_dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__lcrb_dir]  DEFAULT ('') FOR [lcrb_dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__lcrb_fil]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__lcrb_fil]  DEFAULT ('') FOR [lcrb_fil]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btervdir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btervdir]  DEFAULT ('') FOR [btervdir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__btervfil]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__btervfil]  DEFAULT ('') FOR [btervfil]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__vat__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__vat__num]  DEFAULT ('') FOR [vat__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bkhpar__digidoc_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bkhpar__] ADD  CONSTRAINT [DF_bkhpar__digidoc_]  DEFAULT ('') FOR [digidoc_]
END

