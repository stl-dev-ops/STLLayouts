SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aw_prc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aw_prc__](
	[awpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awpr_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awpr_om1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[awpr_om2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan1] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan3] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan4] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[van_torn] [int] NOT NULL,
	[tot_torn] [int] NOT NULL,
	[kaft_tor] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[mnsrtpag] [int] NOT NULL,
	[mxsrtpag] [int] NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[opl__min] [int] NOT NULL,
	[opl__max] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [aw_prci1] PRIMARY KEY CLUSTERED 
(
	[awpr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__awpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__awpr_ref]  DEFAULT ('') FOR [awpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__awpr_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__awpr_rpn]  DEFAULT ('') FOR [awpr_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__awpr_om1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__awpr_om1]  DEFAULT ('') FOR [awpr_om1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__awpr_om2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__awpr_om2]  DEFAULT ('') FOR [awpr_om2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__oms_aan1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__oms_aan1]  DEFAULT ('') FOR [oms_aan1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__oms_aan2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__oms_aan2]  DEFAULT ('') FOR [oms_aan2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__oms_aan3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__oms_aan3]  DEFAULT ('') FOR [oms_aan3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__oms_aan4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__oms_aan4]  DEFAULT ('') FOR [oms_aan4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__van_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__van_torn]  DEFAULT ((0)) FOR [van_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__tot_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__tot_torn]  DEFAULT ((0)) FOR [tot_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__kaft_tor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__kaft_tor]  DEFAULT ('') FOR [kaft_tor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mnsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mnsrtpag]  DEFAULT ((0)) FOR [mnsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mxsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mxsrtpag]  DEFAULT ((0)) FOR [mxsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__opl__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__opl__min]  DEFAULT ((0)) FOR [opl__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_prc__opl__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_prc__] ADD  CONSTRAINT [DF_aw_prc__opl__max]  DEFAULT ((0)) FOR [opl__max]
END

