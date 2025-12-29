SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autlo2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autlo2__](
	[aut_matg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_matg] [int] NOT NULL,
	[aut_bstp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_bstp] [int] NOT NULL,
	[aut_vrbm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vrbm] [int] NOT NULL,
	[aut_tels] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_tels] [int] NOT NULL,
	[aut_prys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_prys] [int] NOT NULL,
	[aut_pabo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pabo] [int] NOT NULL,
	[aut_rsb1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_rsb1] [int] NOT NULL,
	[aut_rsb3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_rsb3] [int] NOT NULL,
	[aut_mbpb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mbpb] [int] NOT NULL,
	[aut_oalb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_oalb] [int] NOT NULL,
	[kleurprt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut_sari] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_sari] [int] NOT NULL,
	[aut_aktr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_aktr] [int] NOT NULL,
	[aut_afr_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afr_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autlo2i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_matg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_matg]  DEFAULT ('') FOR [aut_matg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_matg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_matg]  DEFAULT ((0)) FOR [vlg_matg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_bstp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_bstp]  DEFAULT ('') FOR [aut_bstp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_bstp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_bstp]  DEFAULT ((0)) FOR [vlg_bstp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_vrbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_vrbm]  DEFAULT ('') FOR [aut_vrbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_vrbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_vrbm]  DEFAULT ((0)) FOR [vlg_vrbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_tels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_tels]  DEFAULT ('') FOR [aut_tels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_tels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_tels]  DEFAULT ((0)) FOR [vlg_tels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_prys]  DEFAULT ('') FOR [aut_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_prys]  DEFAULT ((0)) FOR [vlg_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_pabo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_pabo]  DEFAULT ('') FOR [aut_pabo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_pabo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_pabo]  DEFAULT ((0)) FOR [vlg_pabo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_rsb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_rsb1]  DEFAULT ('') FOR [aut_rsb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_rsb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_rsb1]  DEFAULT ((0)) FOR [vlg_rsb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_rsb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_rsb3]  DEFAULT ('') FOR [aut_rsb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_rsb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_rsb3]  DEFAULT ((0)) FOR [vlg_rsb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_mbpb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_mbpb]  DEFAULT ('') FOR [aut_mbpb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_mbpb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_mbpb]  DEFAULT ((0)) FOR [vlg_mbpb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_oalb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_oalb]  DEFAULT ('') FOR [aut_oalb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_oalb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_oalb]  DEFAULT ((0)) FOR [vlg_oalb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__kleurprt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__kleurprt]  DEFAULT ('') FOR [kleurprt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_sari]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_sari]  DEFAULT ('') FOR [aut_sari]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_sari]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_sari]  DEFAULT ((0)) FOR [vlg_sari]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_aktr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_aktr]  DEFAULT ('') FOR [aut_aktr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_aktr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_aktr]  DEFAULT ((0)) FOR [vlg_aktr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__aut_afr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__aut_afr_]  DEFAULT ('') FOR [aut_afr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlo2__vlg_afr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlo2__] ADD  CONSTRAINT [DF_autlo2__vlg_afr_]  DEFAULT ((0)) FOR [vlg_afr_]
END

