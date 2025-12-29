SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3facl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3facl__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnrfl] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[kort__vm] [float] NOT NULL,
	[kort__bm] [float] NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[fkttxt1_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt2_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_com1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_com2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stprysvm] [float] NOT NULL,
	[stprysbm] [float] NOT NULL,
	[prysbovm] [float] NOT NULL,
	[aant__bo] [int] NOT NULL,
	[basisopl] [float] NOT NULL,
	[f_aantal] [float] NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[eigenbtw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3facli1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__volgnrfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__volgnrfl]  DEFAULT ('') FOR [volgnrfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__fpl__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__fpl__typ]  DEFAULT ('') FOR [fpl__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__kort__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__kort__vm]  DEFAULT ((0)) FOR [kort__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__kort__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__kort__bm]  DEFAULT ((0)) FOR [kort__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__fkttxt1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__fkttxt1_]  DEFAULT ('') FOR [fkttxt1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__fkttxt2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__fkttxt2_]  DEFAULT ('') FOR [fkttxt2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__int_com1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__int_com1]  DEFAULT ('') FOR [int_com1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__int_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__int_com2]  DEFAULT ('') FOR [int_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__stprysvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__stprysvm]  DEFAULT ((0)) FOR [stprysvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__stprysbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__stprysbm]  DEFAULT ((0)) FOR [stprysbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__prysbovm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__prysbovm]  DEFAULT ((0)) FOR [prysbovm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__aant__bo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__aant__bo]  DEFAULT ((0)) FOR [aant__bo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__basisopl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__basisopl]  DEFAULT ((0)) FOR [basisopl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__eigenbtw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__eigenbtw]  DEFAULT ('') FOR [eigenbtw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__kort_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__kort_mog]  DEFAULT ('') FOR [kort_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__comm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__comm_mog]  DEFAULT ('') FOR [comm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__tlr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__tlr__ref]  DEFAULT ('') FOR [tlr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__tlr__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__tlr__beg]  DEFAULT ((0)) FOR [tlr__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__tlr_eind]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__tlr_eind]  DEFAULT ((0)) FOR [tlr_eind]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__totaf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__totaf_vm]  DEFAULT ((0)) FOR [totaf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__totaf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__totaf_bm]  DEFAULT ((0)) FOR [totaf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__gfaantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__gfaantal]  DEFAULT ((0)) FOR [gfaantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__srt_inkt]  DEFAULT ('') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3facl__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3facl__] ADD  CONSTRAINT [DF_v3facl__stx__srt]  DEFAULT ('') FOR [stx__srt]
END

