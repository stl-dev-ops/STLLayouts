SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bstvfl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bstvfl__](
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vfl__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fknp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp___af] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[kort__vm] [float] NOT NULL,
	[kort__bm] [float] NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[fkttxt1_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt2_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stprysvm] [float] NOT NULL,
	[stprysbm] [float] NOT NULL,
	[aant__bo] [int] NOT NULL,
	[basisopl] [float] NOT NULL,
	[f_aantal] [float] NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[comm_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tlr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tlr__beg] [float] NOT NULL,
	[tlr_eind] [float] NOT NULL,
	[totaf_vm] [float] NOT NULL,
	[totaf_bm] [float] NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gfaantal] [float] NOT NULL,
	[fac__dat] [date] NOT NULL,
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flok_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[flknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betdmeth] [nvarchar](64) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_dat] [date] NOT NULL,
	[betd_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_tid] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdcard] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_kla] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_com] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdf_bm] [float] NOT NULL,
	[betdf_vm] [float] NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnrfl] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bstvfli1] PRIMARY KEY CLUSTERED 
(
	[bst__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstvfl__]') AND name = N'bstvfli2')
CREATE NONCLUSTERED INDEX [bstvfli2] ON [dbo].[bstvfl__]
(
	[last_edit_time] ASC,
	[lyn__ref] ASC,
	[bst__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__vfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__vfl__ref]  DEFAULT ('') FOR [vfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fpl__ref]  DEFAULT ('1') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fkla_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fkla_typ]  DEFAULT ('2') FOR [fkla_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fknp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fknp_ref]  DEFAULT ('') FOR [fknp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__grp___af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__grp___af]  DEFAULT ('1') FOR [grp___af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__kort__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__kort__vm]  DEFAULT ((0)) FOR [kort__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__kort__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__kort__bm]  DEFAULT ((0)) FOR [kort__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fkttxt1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fkttxt1_]  DEFAULT ('') FOR [fkttxt1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fkttxt2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fkttxt2_]  DEFAULT ('') FOR [fkttxt2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__stprysvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__stprysvm]  DEFAULT ((0)) FOR [stprysvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__stprysbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__stprysbm]  DEFAULT ((0)) FOR [stprysbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__aant__bo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__aant__bo]  DEFAULT ((1)) FOR [aant__bo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__basisopl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__basisopl]  DEFAULT ((0)) FOR [basisopl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__btw_____]  DEFAULT ('0') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__kort_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__kort_mog]  DEFAULT ('Y') FOR [kort_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__comm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__comm_mog]  DEFAULT ('Y') FOR [comm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__tlr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__tlr__ref]  DEFAULT ('') FOR [tlr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__tlr__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__tlr__beg]  DEFAULT ((0)) FOR [tlr__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__tlr_eind]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__tlr_eind]  DEFAULT ((0)) FOR [tlr_eind]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__totaf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__totaf_vm]  DEFAULT ((0)) FOR [totaf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__totaf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__totaf_bm]  DEFAULT ((0)) FOR [totaf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fac__tst]  DEFAULT ('0') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__gfaantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__gfaantal]  DEFAULT ((0)) FOR [gfaantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__stx__srt]  DEFAULT ('1') FOR [stx__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__flknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__flknpref]  DEFAULT ('') FOR [flknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betdmeth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betdmeth]  DEFAULT ('') FOR [betdmeth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd_uur]  DEFAULT ('  0:00') FOR [betd_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd_tid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd_tid]  DEFAULT ('') FOR [betd_tid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betdcard]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betdcard]  DEFAULT ('') FOR [betdcard]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd_kla]  DEFAULT ('') FOR [betd_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betd_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betd_com]  DEFAULT ('') FOR [betd_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betdf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betdf_bm]  DEFAULT ((0)) FOR [betdf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__betdf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__betdf_vm]  DEFAULT ((0)) FOR [betdf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__volgnrfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__volgnrfl]  DEFAULT ('') FOR [volgnrfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstvfl__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstvfl__] ADD  CONSTRAINT [DF_bstvfl__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

