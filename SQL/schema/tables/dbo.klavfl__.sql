SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klavfl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klavfl__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[fkttxt1_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt2_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_com1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_com2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stprysvm] [float] NOT NULL,
	[stprysbm] [float] NOT NULL,
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
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klavfli0] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__fkttxt1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__fkttxt1_]  DEFAULT ('') FOR [fkttxt1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__fkttxt2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__fkttxt2_]  DEFAULT ('') FOR [fkttxt2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__int_com1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__int_com1]  DEFAULT ('') FOR [int_com1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__int_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__int_com2]  DEFAULT ('') FOR [int_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__stprysvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__stprysvm]  DEFAULT ((0)) FOR [stprysvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__stprysbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__stprysbm]  DEFAULT ((0)) FOR [stprysbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__aant__bo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__aant__bo]  DEFAULT ((0)) FOR [aant__bo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__basisopl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__basisopl]  DEFAULT ((0)) FOR [basisopl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__eigenbtw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__eigenbtw]  DEFAULT ('') FOR [eigenbtw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__kort_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__kort_mog]  DEFAULT ('') FOR [kort_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__comm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__comm_mog]  DEFAULT ('') FOR [comm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__tlr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__tlr__ref]  DEFAULT ('') FOR [tlr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__tlr__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__tlr__beg]  DEFAULT ((0)) FOR [tlr__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__tlr_eind]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__tlr_eind]  DEFAULT ((0)) FOR [tlr_eind]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klavfl__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klavfl__] ADD  CONSTRAINT [DF_klavfl__stx__srt]  DEFAULT ('') FOR [stx__srt]
END

