SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfsrv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfsrv__](
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vendor__] [int] NOT NULL,
	[srv__oms] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[contr_id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[url_____] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[port____] [int] NOT NULL,
	[adres___] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[mime____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[version_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fileprot] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hot_fldr] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[pchalive] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pch__res] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pch_stat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pchevent] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__grp] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[proc_grp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_form] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[impotype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[use__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rty__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awz__atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[asynch__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[resubmit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_able] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_able] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[medwidth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[updmedia] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[appr_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[end__job] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rpt__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stdevdet] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[stjobdet] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[stobpath] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[stmindel] [float] NOT NULL,
	[strptime] [float] NOT NULL,
	[resclass] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[mileevnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__prf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_prf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_kdg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_rty] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eventtst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_plc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eventpln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lay_prep] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laneprnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[artdelin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb__plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb_misc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[layout_able] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_employee_info] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_queue_info] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [jmfsrvi1] PRIMARY KEY CLUSTERED 
(
	[srv__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__vendor__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__vendor__]  DEFAULT ((0)) FOR [vendor__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__srv__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__srv__oms]  DEFAULT ('') FOR [srv__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__contr_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__contr_id]  DEFAULT ('') FOR [contr_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__url_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__url_____]  DEFAULT ('') FOR [url_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__port____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__port____]  DEFAULT ((0)) FOR [port____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__adres___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__adres___]  DEFAULT ('') FOR [adres___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__mime____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__mime____]  DEFAULT ('') FOR [mime____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__version_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__version_]  DEFAULT ('') FOR [version_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__default_]  DEFAULT ('') FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__fileprot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__fileprot]  DEFAULT ('') FOR [fileprot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__hot_fldr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__hot_fldr]  DEFAULT ('') FOR [hot_fldr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__pchalive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__pchalive]  DEFAULT ('') FOR [pchalive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__pch__res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__pch__res]  DEFAULT ('') FOR [pch__res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__pch_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__pch_stat]  DEFAULT ('') FOR [pch_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__pchevent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__pchevent]  DEFAULT ('') FOR [pchevent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__sub__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__sub__grp]  DEFAULT ('') FOR [sub__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__proc_grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__proc_grp]  DEFAULT ('') FOR [proc_grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__jdf_form]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__jdf_form]  DEFAULT ('') FOR [jdf_form]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__impotype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__impotype]  DEFAULT ('') FOR [impotype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__use__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__use__vrs]  DEFAULT ('') FOR [use__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__rty__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__rty__typ]  DEFAULT ('') FOR [rty__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__awz__atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__awz__atl]  DEFAULT ('') FOR [awz__atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__asynch__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__asynch__]  DEFAULT ('') FOR [asynch__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__resubmit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__resubmit]  DEFAULT ('') FOR [resubmit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__afg_able]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__afg_able]  DEFAULT ('') FOR [afg_able]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__cad_able]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__cad_able]  DEFAULT ('') FOR [cad_able]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__medwidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__medwidth]  DEFAULT ('') FOR [medwidth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__updmedia]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__updmedia]  DEFAULT ('') FOR [updmedia]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__appr_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__appr_ord]  DEFAULT ('') FOR [appr_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__end__job]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__end__job]  DEFAULT ('') FOR [end__job]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__rpt__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__rpt__vrs]  DEFAULT ('') FOR [rpt__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stdevdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stdevdet]  DEFAULT ('') FOR [stdevdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stjobdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stjobdet]  DEFAULT ('') FOR [stjobdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stobpath]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stobpath]  DEFAULT ('') FOR [stobpath]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stmindel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stmindel]  DEFAULT ((0)) FOR [stmindel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__strptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__strptime]  DEFAULT ((0)) FOR [strptime]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__resclass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__resclass]  DEFAULT ('') FOR [resclass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__mileevnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__mileevnt]  DEFAULT ('') FOR [mileevnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__res__prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__res__prf]  DEFAULT ('') FOR [res__prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__res__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__res__plt]  DEFAULT ('') FOR [res__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__res__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__res__tst]  DEFAULT ('') FOR [res__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_prf]  DEFAULT ('') FOR [stat_prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_plt]  DEFAULT ('') FOR [stat_plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_kdg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_kdg]  DEFAULT ('') FOR [stat_kdg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_rty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_rty]  DEFAULT ('') FOR [stat_rty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_pln]  DEFAULT ('') FOR [stat_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__eventtst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__eventtst]  DEFAULT ('') FOR [eventtst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__stat_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__stat_plc]  DEFAULT ('') FOR [stat_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__eventpln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__eventpln]  DEFAULT ('') FOR [eventpln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__lay_prep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__lay_prep]  DEFAULT ('') FOR [lay_prep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__laneprnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__laneprnt]  DEFAULT ('') FOR [laneprnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__artdelin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__artdelin]  DEFAULT ('') FOR [artdelin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__vrb__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__vrb__plt]  DEFAULT ('') FOR [vrb__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__vrb_misc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__vrb_misc]  DEFAULT ('') FOR [vrb_misc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__layout_able]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__layout_able]  DEFAULT ('') FOR [layout_able]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__st_employee_info]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__st_employee_info]  DEFAULT ('1') FOR [st_employee_info]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfsrv__st_queue_info]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfsrv__] ADD  CONSTRAINT [DF_jmfsrv__st_queue_info]  DEFAULT ('0') FOR [st_queue_info]
END

