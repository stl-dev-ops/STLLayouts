SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[perovz__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[perovz__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[pk_open_] [float] NOT NULL,
	[pk_actif] [float] NOT NULL,
	[pk_archf] [float] NOT NULL,
	[pk_extra] [float] NOT NULL,
	[po_open_] [float] NOT NULL,
	[po_actif] [float] NOT NULL,
	[po_archf] [float] NOT NULL,
	[po_extra] [float] NOT NULL,
	[o_bstlyn] [float] NOT NULL,
	[o_andere] [float] NOT NULL,
	[pv_open_] [float] NOT NULL,
	[pv_actif] [float] NOT NULL,
	[pv_archf] [float] NOT NULL,
	[tof__grd] [float] NOT NULL,
	[tof__wdd] [float] NOT NULL,
	[tof__trn] [float] NOT NULL,
	[tof__afg] [float] NOT NULL,
	[tfk__bst] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [perovzi1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pk_open_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pk_open_]  DEFAULT ((0)) FOR [pk_open_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pk_actif]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pk_actif]  DEFAULT ((0)) FOR [pk_actif]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pk_archf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pk_archf]  DEFAULT ((0)) FOR [pk_archf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pk_extra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pk_extra]  DEFAULT ((0)) FOR [pk_extra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__po_open_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__po_open_]  DEFAULT ((0)) FOR [po_open_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__po_actif]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__po_actif]  DEFAULT ((0)) FOR [po_actif]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__po_archf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__po_archf]  DEFAULT ((0)) FOR [po_archf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__po_extra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__po_extra]  DEFAULT ((0)) FOR [po_extra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__o_bstlyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__o_bstlyn]  DEFAULT ((0)) FOR [o_bstlyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__o_andere]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__o_andere]  DEFAULT ((0)) FOR [o_andere]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pv_open_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pv_open_]  DEFAULT ((0)) FOR [pv_open_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pv_actif]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pv_actif]  DEFAULT ((0)) FOR [pv_actif]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__pv_archf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__pv_archf]  DEFAULT ((0)) FOR [pv_archf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__tof__grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__tof__grd]  DEFAULT ((0)) FOR [tof__grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__tof__wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__tof__wdd]  DEFAULT ((0)) FOR [tof__wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__tof__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__tof__trn]  DEFAULT ((0)) FOR [tof__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__tof__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__tof__afg]  DEFAULT ((0)) FOR [tof__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perovz__tfk__bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perovz__] ADD  CONSTRAINT [DF_perovz__tfk__bst]  DEFAULT ((0)) FOR [tfk__bst]
END

