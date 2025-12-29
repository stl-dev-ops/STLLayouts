SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autbas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autbas__](
	[auto_kla] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_kla] [int] NOT NULL,
	[auto_lev] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_lev] [int] NOT NULL,
	[auto_ver] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_ver] [int] NOT NULL,
	[auto_lok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_lok] [int] NOT NULL,
	[auto_grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_grd] [int] NOT NULL,
	[auto_vrm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_vrm] [int] NOT NULL,
	[aut_ehbo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ehbo] [int] NOT NULL,
	[aut__afg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__afg] [int] NOT NULL,
	[aut_orzk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_orzk] [int] NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[werkadrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betkrefl] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betwrefl] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms__ean] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ_adrs] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vestging] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[destin_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[destin_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[destin_3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[destin_4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[destin_5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dir_pkat] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[levrefpk] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dir_cgxl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[buhr_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[eff__vrg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eff__ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pbr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kredtbep] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dir__clt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut__clt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__clt] [int] NOT NULL,
	[vlg__kom] [int] NOT NULL,
	[omshdat1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshdat2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshdat3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshstr1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshstr2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshstr3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshget1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshget2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omshget3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omskpkr1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omskpkr2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omskpkr3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omskpkr4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omskpkr5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klabas30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levbas30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlok30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konpkl30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konplv30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[konper30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref_lev] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autbasi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_kla]  DEFAULT ('') FOR [auto_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_kla]  DEFAULT ((0)) FOR [volg_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_lev]  DEFAULT ('') FOR [auto_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_lev]  DEFAULT ((0)) FOR [volg_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_ver]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_ver]  DEFAULT ('') FOR [auto_ver]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_ver]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_ver]  DEFAULT ((0)) FOR [volg_ver]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_lok]  DEFAULT ('') FOR [auto_lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_lok]  DEFAULT ((0)) FOR [volg_lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_grd]  DEFAULT ('') FOR [auto_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_grd]  DEFAULT ((0)) FOR [volg_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__auto_vrm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__auto_vrm]  DEFAULT ('') FOR [auto_vrm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__volg_vrm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__volg_vrm]  DEFAULT ((0)) FOR [volg_vrm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__aut_ehbo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__aut_ehbo]  DEFAULT ('') FOR [aut_ehbo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vlg_ehbo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vlg_ehbo]  DEFAULT ((0)) FOR [vlg_ehbo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__aut__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__aut__afg]  DEFAULT ('') FOR [aut__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vlg__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vlg__afg]  DEFAULT ((0)) FOR [vlg__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__aut_orzk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__aut_orzk]  DEFAULT ('') FOR [aut_orzk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vlg_orzk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vlg_orzk]  DEFAULT ((0)) FOR [vlg_orzk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__werkadrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__werkadrs]  DEFAULT ('') FOR [werkadrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__betkrefl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__betkrefl]  DEFAULT ('') FOR [betkrefl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__betwrefl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__betwrefl]  DEFAULT ('') FOR [betwrefl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__oms__ean]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__oms__ean]  DEFAULT ('') FOR [oms__ean]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levtrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levtrref]  DEFAULT ('') FOR [levtrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__typ_adrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__typ_adrs]  DEFAULT ('') FOR [typ_adrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vestging]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vestging]  DEFAULT ('') FOR [vestging]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__destin_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__destin_1]  DEFAULT ('') FOR [destin_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__destin_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__destin_2]  DEFAULT ('') FOR [destin_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__destin_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__destin_3]  DEFAULT ('') FOR [destin_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__destin_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__destin_4]  DEFAULT ('') FOR [destin_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__destin_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__destin_5]  DEFAULT ('') FOR [destin_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__dir_pkat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__dir_pkat]  DEFAULT ('') FOR [dir_pkat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levrefpk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levrefpk]  DEFAULT ('') FOR [levrefpk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__dir_cgxl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__dir_cgxl]  DEFAULT ('') FOR [dir_cgxl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__buhr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__buhr_ref]  DEFAULT ('') FOR [buhr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__eff__vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__eff__vrg]  DEFAULT ('') FOR [eff__vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__eff__ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__eff__ant]  DEFAULT ('') FOR [eff__ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__pbr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__pbr__ref]  DEFAULT ('') FOR [pbr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__trn2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__trn2_ref]  DEFAULT ('') FOR [trn2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__kredtbep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__kredtbep]  DEFAULT ('') FOR [kredtbep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__dir__clt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__dir__clt]  DEFAULT ('') FOR [dir__clt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__aut__clt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__aut__clt]  DEFAULT ('') FOR [aut__clt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vlg__clt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vlg__clt]  DEFAULT ((0)) FOR [vlg__clt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__vlg__kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__vlg__kom]  DEFAULT ((0)) FOR [vlg__kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshdat1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshdat1]  DEFAULT ('') FOR [omshdat1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshdat2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshdat2]  DEFAULT ('') FOR [omshdat2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshdat3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshdat3]  DEFAULT ('') FOR [omshdat3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshstr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshstr1]  DEFAULT ('') FOR [omshstr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshstr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshstr2]  DEFAULT ('') FOR [omshstr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshstr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshstr3]  DEFAULT ('') FOR [omshstr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshget1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshget1]  DEFAULT ('') FOR [omshget1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshget2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshget2]  DEFAULT ('') FOR [omshget2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omshget3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omshget3]  DEFAULT ('') FOR [omshget3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omskpkr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omskpkr1]  DEFAULT ('') FOR [omskpkr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omskpkr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omskpkr2]  DEFAULT ('') FOR [omskpkr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omskpkr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omskpkr3]  DEFAULT ('') FOR [omskpkr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omskpkr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omskpkr4]  DEFAULT ('') FOR [omskpkr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__omskpkr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__omskpkr5]  DEFAULT ('') FOR [omskpkr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas01]  DEFAULT ('') FOR [klabas01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas02]  DEFAULT ('') FOR [klabas02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas03]  DEFAULT ('') FOR [klabas03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas04]  DEFAULT ('') FOR [klabas04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas05]  DEFAULT ('') FOR [klabas05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas06]  DEFAULT ('') FOR [klabas06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas07]  DEFAULT ('') FOR [klabas07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas08]  DEFAULT ('') FOR [klabas08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas09]  DEFAULT ('') FOR [klabas09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas10]  DEFAULT ('') FOR [klabas10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas11]  DEFAULT ('') FOR [klabas11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas12]  DEFAULT ('') FOR [klabas12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas13]  DEFAULT ('') FOR [klabas13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas14]  DEFAULT ('') FOR [klabas14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas15]  DEFAULT ('') FOR [klabas15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas16]  DEFAULT ('') FOR [klabas16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas17]  DEFAULT ('') FOR [klabas17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas18]  DEFAULT ('') FOR [klabas18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas19]  DEFAULT ('') FOR [klabas19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas20]  DEFAULT ('') FOR [klabas20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas21]  DEFAULT ('') FOR [klabas21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas22]  DEFAULT ('') FOR [klabas22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas23]  DEFAULT ('') FOR [klabas23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas24]  DEFAULT ('') FOR [klabas24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas25]  DEFAULT ('') FOR [klabas25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas26]  DEFAULT ('') FOR [klabas26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas27]  DEFAULT ('') FOR [klabas27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas28]  DEFAULT ('') FOR [klabas28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas29]  DEFAULT ('') FOR [klabas29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__klabas30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__klabas30]  DEFAULT ('') FOR [klabas30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas01]  DEFAULT ('') FOR [levbas01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas02]  DEFAULT ('') FOR [levbas02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas03]  DEFAULT ('') FOR [levbas03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas04]  DEFAULT ('') FOR [levbas04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas05]  DEFAULT ('') FOR [levbas05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas06]  DEFAULT ('') FOR [levbas06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas07]  DEFAULT ('') FOR [levbas07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas08]  DEFAULT ('') FOR [levbas08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas09]  DEFAULT ('') FOR [levbas09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas10]  DEFAULT ('') FOR [levbas10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas11]  DEFAULT ('') FOR [levbas11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas12]  DEFAULT ('') FOR [levbas12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas13]  DEFAULT ('') FOR [levbas13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas14]  DEFAULT ('') FOR [levbas14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas15]  DEFAULT ('') FOR [levbas15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas16]  DEFAULT ('') FOR [levbas16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas17]  DEFAULT ('') FOR [levbas17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas18]  DEFAULT ('') FOR [levbas18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas19]  DEFAULT ('') FOR [levbas19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas20]  DEFAULT ('') FOR [levbas20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas21]  DEFAULT ('') FOR [levbas21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas22]  DEFAULT ('') FOR [levbas22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas23]  DEFAULT ('') FOR [levbas23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas24]  DEFAULT ('') FOR [levbas24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas25]  DEFAULT ('') FOR [levbas25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas26]  DEFAULT ('') FOR [levbas26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas27]  DEFAULT ('') FOR [levbas27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas28]  DEFAULT ('') FOR [levbas28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas29]  DEFAULT ('') FOR [levbas29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levbas30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levbas30]  DEFAULT ('') FOR [levbas30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok01]  DEFAULT ('') FOR [levlok01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok02]  DEFAULT ('') FOR [levlok02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok03]  DEFAULT ('') FOR [levlok03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok04]  DEFAULT ('') FOR [levlok04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok05]  DEFAULT ('') FOR [levlok05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok06]  DEFAULT ('') FOR [levlok06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok07]  DEFAULT ('') FOR [levlok07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok08]  DEFAULT ('') FOR [levlok08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok09]  DEFAULT ('') FOR [levlok09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok10]  DEFAULT ('') FOR [levlok10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok11]  DEFAULT ('') FOR [levlok11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok12]  DEFAULT ('') FOR [levlok12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok13]  DEFAULT ('') FOR [levlok13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok14]  DEFAULT ('') FOR [levlok14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok15]  DEFAULT ('') FOR [levlok15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok16]  DEFAULT ('') FOR [levlok16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok17]  DEFAULT ('') FOR [levlok17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok18]  DEFAULT ('') FOR [levlok18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok19]  DEFAULT ('') FOR [levlok19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok20]  DEFAULT ('') FOR [levlok20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok21]  DEFAULT ('') FOR [levlok21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok22]  DEFAULT ('') FOR [levlok22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok23]  DEFAULT ('') FOR [levlok23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok24]  DEFAULT ('') FOR [levlok24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok25]  DEFAULT ('') FOR [levlok25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok26]  DEFAULT ('') FOR [levlok26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok27]  DEFAULT ('') FOR [levlok27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok28]  DEFAULT ('') FOR [levlok28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok29]  DEFAULT ('') FOR [levlok29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levlok30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levlok30]  DEFAULT ('') FOR [levlok30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl01]  DEFAULT ('') FOR [konpkl01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl02]  DEFAULT ('') FOR [konpkl02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl03]  DEFAULT ('') FOR [konpkl03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl04]  DEFAULT ('') FOR [konpkl04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl05]  DEFAULT ('') FOR [konpkl05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl06]  DEFAULT ('') FOR [konpkl06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl07]  DEFAULT ('') FOR [konpkl07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl08]  DEFAULT ('') FOR [konpkl08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl09]  DEFAULT ('') FOR [konpkl09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl10]  DEFAULT ('') FOR [konpkl10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl11]  DEFAULT ('') FOR [konpkl11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl12]  DEFAULT ('') FOR [konpkl12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl13]  DEFAULT ('') FOR [konpkl13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl14]  DEFAULT ('') FOR [konpkl14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl15]  DEFAULT ('') FOR [konpkl15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl16]  DEFAULT ('') FOR [konpkl16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl17]  DEFAULT ('') FOR [konpkl17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl18]  DEFAULT ('') FOR [konpkl18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl19]  DEFAULT ('') FOR [konpkl19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl20]  DEFAULT ('') FOR [konpkl20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl21]  DEFAULT ('') FOR [konpkl21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl22]  DEFAULT ('') FOR [konpkl22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl23]  DEFAULT ('') FOR [konpkl23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl24]  DEFAULT ('') FOR [konpkl24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl25]  DEFAULT ('') FOR [konpkl25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl26]  DEFAULT ('') FOR [konpkl26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl27]  DEFAULT ('') FOR [konpkl27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl28]  DEFAULT ('') FOR [konpkl28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl29]  DEFAULT ('') FOR [konpkl29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konpkl30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konpkl30]  DEFAULT ('') FOR [konpkl30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv01]  DEFAULT ('') FOR [konplv01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv02]  DEFAULT ('') FOR [konplv02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv03]  DEFAULT ('') FOR [konplv03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv04]  DEFAULT ('') FOR [konplv04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv05]  DEFAULT ('') FOR [konplv05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv06]  DEFAULT ('') FOR [konplv06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv07]  DEFAULT ('') FOR [konplv07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv08]  DEFAULT ('') FOR [konplv08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv09]  DEFAULT ('') FOR [konplv09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv10]  DEFAULT ('') FOR [konplv10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv11]  DEFAULT ('') FOR [konplv11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv12]  DEFAULT ('') FOR [konplv12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv13]  DEFAULT ('') FOR [konplv13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv14]  DEFAULT ('') FOR [konplv14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv15]  DEFAULT ('') FOR [konplv15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv16]  DEFAULT ('') FOR [konplv16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv17]  DEFAULT ('') FOR [konplv17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv18]  DEFAULT ('') FOR [konplv18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv19]  DEFAULT ('') FOR [konplv19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv20]  DEFAULT ('') FOR [konplv20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv21]  DEFAULT ('') FOR [konplv21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv22]  DEFAULT ('') FOR [konplv22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv23]  DEFAULT ('') FOR [konplv23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv24]  DEFAULT ('') FOR [konplv24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv25]  DEFAULT ('') FOR [konplv25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv26]  DEFAULT ('') FOR [konplv26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv27]  DEFAULT ('') FOR [konplv27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv28]  DEFAULT ('') FOR [konplv28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv29]  DEFAULT ('') FOR [konplv29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konplv30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konplv30]  DEFAULT ('') FOR [konplv30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper01]  DEFAULT ('') FOR [konper01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper02]  DEFAULT ('') FOR [konper02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper03]  DEFAULT ('') FOR [konper03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper04]  DEFAULT ('') FOR [konper04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper05]  DEFAULT ('') FOR [konper05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper06]  DEFAULT ('') FOR [konper06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper07]  DEFAULT ('') FOR [konper07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper08]  DEFAULT ('') FOR [konper08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper09]  DEFAULT ('') FOR [konper09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper10]  DEFAULT ('') FOR [konper10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper11]  DEFAULT ('') FOR [konper11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper12]  DEFAULT ('') FOR [konper12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper13]  DEFAULT ('') FOR [konper13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper14]  DEFAULT ('') FOR [konper14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper15]  DEFAULT ('') FOR [konper15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper16]  DEFAULT ('') FOR [konper16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper17]  DEFAULT ('') FOR [konper17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper18]  DEFAULT ('') FOR [konper18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper19]  DEFAULT ('') FOR [konper19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper20]  DEFAULT ('') FOR [konper20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper21]  DEFAULT ('') FOR [konper21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper22]  DEFAULT ('') FOR [konper22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper23]  DEFAULT ('') FOR [konper23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper24]  DEFAULT ('') FOR [konper24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper25]  DEFAULT ('') FOR [konper25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper26]  DEFAULT ('') FOR [konper26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper27]  DEFAULT ('') FOR [konper27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper28]  DEFAULT ('') FOR [konper28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper29]  DEFAULT ('') FOR [konper29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__konper30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__konper30]  DEFAULT ('') FOR [konper30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_01]  DEFAULT ('') FOR [order_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_02]  DEFAULT ('') FOR [order_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_03]  DEFAULT ('') FOR [order_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_04]  DEFAULT ('') FOR [order_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_05]  DEFAULT ('') FOR [order_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_06]  DEFAULT ('') FOR [order_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_07]  DEFAULT ('') FOR [order_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_08]  DEFAULT ('') FOR [order_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_09]  DEFAULT ('') FOR [order_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_10]  DEFAULT ('') FOR [order_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_11]  DEFAULT ('') FOR [order_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_12]  DEFAULT ('') FOR [order_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_13]  DEFAULT ('') FOR [order_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_14]  DEFAULT ('') FOR [order_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_15]  DEFAULT ('') FOR [order_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_16]  DEFAULT ('') FOR [order_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_17]  DEFAULT ('') FOR [order_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_18]  DEFAULT ('') FOR [order_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_19]  DEFAULT ('') FOR [order_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_20]  DEFAULT ('') FOR [order_20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_21]  DEFAULT ('') FOR [order_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_22]  DEFAULT ('') FOR [order_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_23]  DEFAULT ('') FOR [order_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_24]  DEFAULT ('') FOR [order_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_25]  DEFAULT ('') FOR [order_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_26]  DEFAULT ('') FOR [order_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_27]  DEFAULT ('') FOR [order_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_28]  DEFAULT ('') FOR [order_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_29]  DEFAULT ('') FOR [order_29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__order_30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__order_30]  DEFAULT ('') FOR [order_30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbas__levvwref_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbas__] ADD  CONSTRAINT [DF_autbas__levvwref_lev]  DEFAULT ('') FOR [levvwref_lev]
END

