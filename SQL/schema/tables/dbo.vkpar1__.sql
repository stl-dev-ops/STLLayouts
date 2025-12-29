SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vkpar1__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vkpar1__](
	[bld__tps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bld_gkpe] [float] NOT NULL,
	[bld__lok] [float] NOT NULL,
	[bld__mak] [float] NOT NULL,
	[bld__ovk] [float] NOT NULL,
	[plk__lok] [float] NOT NULL,
	[plk__mak] [float] NOT NULL,
	[plk__ovk] [float] NOT NULL,
	[uitplbg1] [int] NOT NULL,
	[uitplbg2] [int] NOT NULL,
	[uitplbg3] [int] NOT NULL,
	[uitplbg4] [int] NOT NULL,
	[uitplty1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplhkg] [int] NOT NULL,
	[uitplhtd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitrotps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitrogws] [int] NOT NULL,
	[uiteti_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uiteti_l] [int] NOT NULL,
	[uit__lin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__lok] [float] NOT NULL,
	[uit__mak] [float] NOT NULL,
	[uit__ovk] [float] NOT NULL,
	[vsn__hps] [int] NOT NULL,
	[vsnvbtps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsnkpsty] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn__bg1] [int] NOT NULL,
	[vsn__bg2] [int] NOT NULL,
	[vsn__bg3] [int] NOT NULL,
	[vsn_tps1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn_tps2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn_tps3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn_tps4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn__lok] [float] NOT NULL,
	[vsn__mak] [float] NOT NULL,
	[vsn__ovk] [float] NOT NULL,
	[nsn__hps] [int] NOT NULL,
	[nsnvbtps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsnkpsty] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn__bg1] [int] NOT NULL,
	[nsn__bg2] [int] NOT NULL,
	[nsn__bg3] [int] NOT NULL,
	[nsn_tps1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn_tps2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn_tps3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn_tps4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn__lok] [float] NOT NULL,
	[nsn__mak] [float] NOT NULL,
	[nsn__ovk] [float] NOT NULL,
	[hlpdrlok] [float] NOT NULL,
	[hlpaflok] [float] NOT NULL,
	[tsssnt_h] [float] NOT NULL,
	[tsssnt_v] [float] NOT NULL,
	[oversl_t] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oversl_l] [float] NOT NULL,
	[grijpwit] [float] NOT NULL,
	[stripwit] [float] NOT NULL,
	[kader___] [float] NOT NULL,
	[grijpw_1] [float] NOT NULL,
	[stripw_1] [float] NOT NULL,
	[kader__1] [float] NOT NULL,
	[grijpw_2] [float] NOT NULL,
	[stripw_2] [float] NOT NULL,
	[kader__2] [float] NOT NULL,
	[grijpw_3] [float] NOT NULL,
	[stripw_3] [float] NOT NULL,
	[kader__3] [float] NOT NULL,
	[grijpw_4] [float] NOT NULL,
	[stripw_4] [float] NOT NULL,
	[kader__4] [float] NOT NULL,
	[fmtgrp_b] [float] NOT NULL,
	[fmtgrp_l] [float] NOT NULL,
	[ink__re1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp1] [int] NOT NULL,
	[ant_mon1] [int] NOT NULL,
	[ant_plt1] [int] NOT NULL,
	[ink__re2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp2] [int] NOT NULL,
	[ant_mon2] [int] NOT NULL,
	[ant_plt2] [int] NOT NULL,
	[ink__re3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp3] [int] NOT NULL,
	[ant_mon3] [int] NOT NULL,
	[ant_plt3] [int] NOT NULL,
	[ink__re4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp4] [int] NOT NULL,
	[ant_mon4] [int] NOT NULL,
	[ant_plt4] [int] NOT NULL,
	[drgvzref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vzk__lok] [float] NOT NULL,
	[vzk__mak] [float] NOT NULL,
	[vzk__ovk] [float] NOT NULL,
	[vzk___vt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vzk__tpt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vkpar1i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__bld__tps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__bld__tps]  DEFAULT ('') FOR [bld__tps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__bld_gkpe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__bld_gkpe]  DEFAULT ((0)) FOR [bld_gkpe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__bld__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__bld__lok]  DEFAULT ((0)) FOR [bld__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__bld__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__bld__mak]  DEFAULT ((0)) FOR [bld__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__bld__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__bld__ovk]  DEFAULT ((0)) FOR [bld__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__plk__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__plk__lok]  DEFAULT ((0)) FOR [plk__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__plk__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__plk__mak]  DEFAULT ((0)) FOR [plk__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__plk__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__plk__ovk]  DEFAULT ((0)) FOR [plk__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplbg1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplbg1]  DEFAULT ((0)) FOR [uitplbg1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplbg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplbg2]  DEFAULT ((0)) FOR [uitplbg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplbg3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplbg3]  DEFAULT ((0)) FOR [uitplbg3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplbg4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplbg4]  DEFAULT ((0)) FOR [uitplbg4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplty1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplty1]  DEFAULT ('') FOR [uitplty1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplty2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplty2]  DEFAULT ('') FOR [uitplty2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplty3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplty3]  DEFAULT ('') FOR [uitplty3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplty4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplty4]  DEFAULT ('') FOR [uitplty4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplhkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplhkg]  DEFAULT ((0)) FOR [uitplhkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitplhtd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitplhtd]  DEFAULT ('') FOR [uitplhtd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitrotps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitrotps]  DEFAULT ('') FOR [uitrotps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uitrogws]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uitrogws]  DEFAULT ((0)) FOR [uitrogws]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uiteti_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uiteti_t]  DEFAULT ('') FOR [uiteti_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uiteti_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uiteti_l]  DEFAULT ((0)) FOR [uiteti_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uit__lin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uit__lin]  DEFAULT ('') FOR [uit__lin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uit__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uit__lok]  DEFAULT ((0)) FOR [uit__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uit__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uit__mak]  DEFAULT ((0)) FOR [uit__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__uit__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__uit__ovk]  DEFAULT ((0)) FOR [uit__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__hps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__hps]  DEFAULT ((0)) FOR [vsn__hps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsnvbtps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsnvbtps]  DEFAULT ('') FOR [vsnvbtps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsnkpsty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsnkpsty]  DEFAULT ('') FOR [vsnkpsty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__bg1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__bg1]  DEFAULT ((0)) FOR [vsn__bg1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__bg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__bg2]  DEFAULT ((0)) FOR [vsn__bg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__bg3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__bg3]  DEFAULT ((0)) FOR [vsn__bg3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn_tps1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn_tps1]  DEFAULT ('') FOR [vsn_tps1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn_tps2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn_tps2]  DEFAULT ('') FOR [vsn_tps2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn_tps3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn_tps3]  DEFAULT ('') FOR [vsn_tps3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn_tps4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn_tps4]  DEFAULT ('') FOR [vsn_tps4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__lok]  DEFAULT ((0)) FOR [vsn__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__mak]  DEFAULT ((0)) FOR [vsn__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vsn__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vsn__ovk]  DEFAULT ((0)) FOR [vsn__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__hps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__hps]  DEFAULT ((0)) FOR [nsn__hps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsnvbtps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsnvbtps]  DEFAULT ('') FOR [nsnvbtps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsnkpsty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsnkpsty]  DEFAULT ('') FOR [nsnkpsty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__bg1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__bg1]  DEFAULT ((0)) FOR [nsn__bg1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__bg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__bg2]  DEFAULT ((0)) FOR [nsn__bg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__bg3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__bg3]  DEFAULT ((0)) FOR [nsn__bg3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn_tps1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn_tps1]  DEFAULT ('') FOR [nsn_tps1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn_tps2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn_tps2]  DEFAULT ('') FOR [nsn_tps2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn_tps3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn_tps3]  DEFAULT ('') FOR [nsn_tps3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn_tps4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn_tps4]  DEFAULT ('') FOR [nsn_tps4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__lok]  DEFAULT ((0)) FOR [nsn__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__mak]  DEFAULT ((0)) FOR [nsn__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__nsn__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__nsn__ovk]  DEFAULT ((0)) FOR [nsn__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__hlpdrlok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__hlpdrlok]  DEFAULT ((0)) FOR [hlpdrlok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__hlpaflok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__hlpaflok]  DEFAULT ((0)) FOR [hlpaflok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__tsssnt_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__tsssnt_h]  DEFAULT ((0)) FOR [tsssnt_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__tsssnt_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__tsssnt_v]  DEFAULT ((0)) FOR [tsssnt_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__oversl_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__oversl_t]  DEFAULT ('') FOR [oversl_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__oversl_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__oversl_l]  DEFAULT ((0)) FOR [oversl_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__grijpwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__grijpwit]  DEFAULT ((0)) FOR [grijpwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__stripwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__stripwit]  DEFAULT ((0)) FOR [stripwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__kader___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__kader___]  DEFAULT ((0)) FOR [kader___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__grijpw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__grijpw_1]  DEFAULT ((0)) FOR [grijpw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__stripw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__stripw_1]  DEFAULT ((0)) FOR [stripw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__kader__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__kader__1]  DEFAULT ((0)) FOR [kader__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__grijpw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__grijpw_2]  DEFAULT ((0)) FOR [grijpw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__stripw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__stripw_2]  DEFAULT ((0)) FOR [stripw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__kader__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__kader__2]  DEFAULT ((0)) FOR [kader__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__grijpw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__grijpw_3]  DEFAULT ((0)) FOR [grijpw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__stripw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__stripw_3]  DEFAULT ((0)) FOR [stripw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__kader__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__kader__3]  DEFAULT ((0)) FOR [kader__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__grijpw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__grijpw_4]  DEFAULT ((0)) FOR [grijpw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__stripw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__stripw_4]  DEFAULT ((0)) FOR [stripw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__kader__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__kader__4]  DEFAULT ((0)) FOR [kader__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__fmtgrp_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__fmtgrp_b]  DEFAULT ((0)) FOR [fmtgrp_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__fmtgrp_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__fmtgrp_l]  DEFAULT ((0)) FOR [fmtgrp_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ink__re1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ink__re1]  DEFAULT ('') FOR [ink__re1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__inkvrbp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__inkvrbp1]  DEFAULT ((0)) FOR [inkvrbp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_mon1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_mon1]  DEFAULT ((0)) FOR [ant_mon1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_plt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_plt1]  DEFAULT ((0)) FOR [ant_plt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ink__re2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ink__re2]  DEFAULT ('') FOR [ink__re2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__inkvrbp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__inkvrbp2]  DEFAULT ((0)) FOR [inkvrbp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_mon2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_mon2]  DEFAULT ((0)) FOR [ant_mon2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_plt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_plt2]  DEFAULT ((0)) FOR [ant_plt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ink__re3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ink__re3]  DEFAULT ('') FOR [ink__re3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__inkvrbp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__inkvrbp3]  DEFAULT ((0)) FOR [inkvrbp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_mon3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_mon3]  DEFAULT ((0)) FOR [ant_mon3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_plt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_plt3]  DEFAULT ((0)) FOR [ant_plt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ink__re4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ink__re4]  DEFAULT ('') FOR [ink__re4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__inkvrbp4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__inkvrbp4]  DEFAULT ((0)) FOR [inkvrbp4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_mon4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_mon4]  DEFAULT ((0)) FOR [ant_mon4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__ant_plt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__ant_plt4]  DEFAULT ((0)) FOR [ant_plt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__drgvzref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__drgvzref]  DEFAULT ('') FOR [drgvzref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vzk__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vzk__lok]  DEFAULT ((0)) FOR [vzk__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vzk__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vzk__mak]  DEFAULT ((0)) FOR [vzk__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vzk__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vzk__ovk]  DEFAULT ((0)) FOR [vzk__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vzk___vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vzk___vt]  DEFAULT ('') FOR [vzk___vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar1__vzk__tpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar1__] ADD  CONSTRAINT [DF_vkpar1__vzk__tpt]  DEFAULT ('') FOR [vzk__tpt]
END

