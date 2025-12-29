SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisofl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisofl__](
	[his__vnr] [int] NOT NULL,
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[boekkost] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakomend] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkoa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlgnrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[verd_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof__vm] [float] NOT NULL,
	[prof__bm] [float] NOT NULL,
	[prof__om] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[fko__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__kpl] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__kst] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[onvto_vm] [float] NOT NULL,
	[onvto_bm] [float] NOT NULL,
	[onvto_om] [float] NOT NULL,
	[onv__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onv__kpl] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[onv__kst] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[onvto2vm] [float] NOT NULL,
	[onvto2bm] [float] NOT NULL,
	[onvto2om] [float] NOT NULL,
	[onv__rk2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof_2vm] [float] NOT NULL,
	[prof_2bm] [float] NOT NULL,
	[prof_2om] [float] NOT NULL,
	[fko__rk3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof_3vm] [float] NOT NULL,
	[prof_3bm] [float] NOT NULL,
	[prof_3om] [float] NOT NULL,
	[nakkom_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakkom_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof_tbm] [float] NOT NULL,
	[prof_tvm] [float] NOT NULL,
	[prof_tom] [float] NOT NULL,
	[fko__rk4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof_dbm] [float] NOT NULL,
	[prof_dvm] [float] NOT NULL,
	[prof_dom] [float] NOT NULL,
	[fko__rk6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wacht___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbw_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkjw_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fowa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gbk_nog1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gbk_nog2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gbk__og1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gbk__og2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_dat] [date] NOT NULL,
	[tstw_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref0] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref1] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref2] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref3] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref4] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref5] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref6] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref7] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref8] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp__ref9] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_ref10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_ref11] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_ref12] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_ref13] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_ref14] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref0] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref1] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref2] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref3] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref4] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref5] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref6] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref7] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref8] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtref9] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtre10] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtre11] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtre12] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtre13] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrtre14] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrbm_0] [float] NOT NULL,
	[bedrbm_1] [float] NOT NULL,
	[bedrbm_2] [float] NOT NULL,
	[bedrbm_3] [float] NOT NULL,
	[bedrbm_4] [float] NOT NULL,
	[bedrbm_5] [float] NOT NULL,
	[bedrbm_6] [float] NOT NULL,
	[bedrbm_7] [float] NOT NULL,
	[bedrbm_8] [float] NOT NULL,
	[bedrbm_9] [float] NOT NULL,
	[bedrbm10] [float] NOT NULL,
	[bedrbm11] [float] NOT NULL,
	[bedrbm12] [float] NOT NULL,
	[bedrbm13] [float] NOT NULL,
	[bedrbm14] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisofli1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fkoa_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisofl__]') AND name = N'hisofli2')
CREATE NONCLUSTERED INDEX [hisofli2] ON [dbo].[hisofl__]
(
	[bsbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__boekkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__boekkost]  DEFAULT ('') FOR [boekkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__nakomend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__nakomend]  DEFAULT ('') FOR [nakomend]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fkoa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fkoa_ref]  DEFAULT ('') FOR [fkoa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__vlgnrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__vlgnrref]  DEFAULT ('') FOR [vlgnrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__verd_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__verd_com]  DEFAULT ('') FOR [verd_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof__vm]  DEFAULT ((0)) FOR [prof__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof__bm]  DEFAULT ((0)) FOR [prof__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof__om]  DEFAULT ((0)) FOR [prof__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rek]  DEFAULT ('') FOR [fko__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__kpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__kpl]  DEFAULT ('') FOR [fko__kpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__kst]  DEFAULT ('') FOR [fko__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto_vm]  DEFAULT ((0)) FOR [onvto_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto_bm]  DEFAULT ((0)) FOR [onvto_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto_om]  DEFAULT ((0)) FOR [onvto_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onv__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onv__rek]  DEFAULT ('') FOR [onv__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onv__kpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onv__kpl]  DEFAULT ('') FOR [onv__kpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onv__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onv__kst]  DEFAULT ('') FOR [onv__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto2vm]  DEFAULT ((0)) FOR [onvto2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto2bm]  DEFAULT ((0)) FOR [onvto2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onvto2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onvto2om]  DEFAULT ((0)) FOR [onvto2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__onv__rk2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__onv__rk2]  DEFAULT ('') FOR [onv__rk2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rk2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rk2]  DEFAULT ('') FOR [fko__rk2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_2vm]  DEFAULT ((0)) FOR [prof_2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_2bm]  DEFAULT ((0)) FOR [prof_2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_2om]  DEFAULT ((0)) FOR [prof_2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rk3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rk3]  DEFAULT ('') FOR [fko__rk3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_3vm]  DEFAULT ((0)) FOR [prof_3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_3bm]  DEFAULT ((0)) FOR [prof_3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_3om]  DEFAULT ((0)) FOR [prof_3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__nakkom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__nakkom_1]  DEFAULT ('') FOR [nakkom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__nakkom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__nakkom_2]  DEFAULT ('') FOR [nakkom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_tbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_tbm]  DEFAULT ((0)) FOR [prof_tbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_tvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_tvm]  DEFAULT ((0)) FOR [prof_tvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_tom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_tom]  DEFAULT ((0)) FOR [prof_tom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rk4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rk4]  DEFAULT ('') FOR [fko__rk4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rk5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rk5]  DEFAULT ('') FOR [fko__rk5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_dbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_dbm]  DEFAULT ((0)) FOR [prof_dbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_dvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_dvm]  DEFAULT ((0)) FOR [prof_dvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__prof_dom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__prof_dom]  DEFAULT ((0)) FOR [prof_dom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fko__rk6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fko__rk6]  DEFAULT ('') FOR [fko__rk6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wacht___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wacht___]  DEFAULT ('') FOR [wacht___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__dgbw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__dgbw_ref]  DEFAULT ('') FOR [dgbw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bkjw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bkjw_ref]  DEFAULT ('') FOR [bkjw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__fowa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__fowa_ref]  DEFAULT ('') FOR [fowa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__gbk_nog1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__gbk_nog1]  DEFAULT ('') FOR [gbk_nog1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__gbk_nog2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__gbk_nog2]  DEFAULT ('') FOR [gbk_nog2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__gbk__og1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__gbk__og1]  DEFAULT ('') FOR [gbk__og1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__gbk__og2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__gbk__og2]  DEFAULT ('') FOR [gbk__og2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__tstw_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__tstw_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [tstw_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__tstw_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__tstw_uur]  DEFAULT ('') FOR [tstw_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__tstw_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__tstw_com]  DEFAULT ('') FOR [tstw_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref0]  DEFAULT ('') FOR [wp__ref0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref1]  DEFAULT ('') FOR [wp__ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref2]  DEFAULT ('') FOR [wp__ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref3]  DEFAULT ('') FOR [wp__ref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref4]  DEFAULT ('') FOR [wp__ref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref5]  DEFAULT ('') FOR [wp__ref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref6]  DEFAULT ('') FOR [wp__ref6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref7]  DEFAULT ('') FOR [wp__ref7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref8]  DEFAULT ('') FOR [wp__ref8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp__ref9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp__ref9]  DEFAULT ('') FOR [wp__ref9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp_ref10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp_ref10]  DEFAULT ('') FOR [wp_ref10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp_ref11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp_ref11]  DEFAULT ('') FOR [wp_ref11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp_ref12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp_ref12]  DEFAULT ('') FOR [wp_ref12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp_ref13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp_ref13]  DEFAULT ('') FOR [wp_ref13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__wp_ref14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__wp_ref14]  DEFAULT ('') FOR [wp_ref14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref0]  DEFAULT ('') FOR [ksrtref0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref1]  DEFAULT ('') FOR [ksrtref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref2]  DEFAULT ('') FOR [ksrtref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref3]  DEFAULT ('') FOR [ksrtref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref4]  DEFAULT ('') FOR [ksrtref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref5]  DEFAULT ('') FOR [ksrtref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref6]  DEFAULT ('') FOR [ksrtref6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref7]  DEFAULT ('') FOR [ksrtref7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref8]  DEFAULT ('') FOR [ksrtref8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtref9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtref9]  DEFAULT ('') FOR [ksrtref9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtre10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtre10]  DEFAULT ('') FOR [ksrtre10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtre11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtre11]  DEFAULT ('') FOR [ksrtre11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtre12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtre12]  DEFAULT ('') FOR [ksrtre12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtre13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtre13]  DEFAULT ('') FOR [ksrtre13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__ksrtre14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__ksrtre14]  DEFAULT ('') FOR [ksrtre14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_0]  DEFAULT ((0)) FOR [bedrbm_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_1]  DEFAULT ((0)) FOR [bedrbm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_2]  DEFAULT ((0)) FOR [bedrbm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_3]  DEFAULT ((0)) FOR [bedrbm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_4]  DEFAULT ((0)) FOR [bedrbm_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_5]  DEFAULT ((0)) FOR [bedrbm_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_6]  DEFAULT ((0)) FOR [bedrbm_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_7]  DEFAULT ((0)) FOR [bedrbm_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_8]  DEFAULT ((0)) FOR [bedrbm_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm_9]  DEFAULT ((0)) FOR [bedrbm_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm10]  DEFAULT ((0)) FOR [bedrbm10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm11]  DEFAULT ((0)) FOR [bedrbm11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm12]  DEFAULT ((0)) FOR [bedrbm12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm13]  DEFAULT ((0)) FOR [bedrbm13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisofl__bedrbm14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisofl__] ADD  CONSTRAINT [DF_hisofl__bedrbm14]  DEFAULT ((0)) FOR [bedrbm14]
END

