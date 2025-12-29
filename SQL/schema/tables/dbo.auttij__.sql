SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auttij__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[auttij__](
	[auto_awz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_awz] [int] NOT NULL,
	[auto_pnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_pnt] [int] NOT NULL,
	[auto_vrb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_vrb] [int] NOT NULL,
	[auto_krd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_krd] [int] NOT NULL,
	[auto_plc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_plc] [int] NOT NULL,
	[auto_prl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_prl] [int] NOT NULL,
	[aut_hplg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_hplg] [int] NOT NULL,
	[auto_prb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_prb] [int] NOT NULL,
	[volg_inl] [int] NOT NULL,
	[folup_00] [int] NOT NULL,
	[folup_01] [int] NOT NULL,
	[folup_02] [int] NOT NULL,
	[folup_03] [int] NOT NULL,
	[folup_04] [int] NOT NULL,
	[folup_05] [int] NOT NULL,
	[folup_06] [int] NOT NULL,
	[folup_07] [int] NOT NULL,
	[folup_08] [int] NOT NULL,
	[folup_09] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [auttiji0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_awz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_awz]  DEFAULT ('') FOR [auto_awz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_awz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_awz]  DEFAULT ((0)) FOR [volg_awz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_pnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_pnt]  DEFAULT ('') FOR [auto_pnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_pnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_pnt]  DEFAULT ((0)) FOR [volg_pnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_vrb]  DEFAULT ('') FOR [auto_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_vrb]  DEFAULT ((0)) FOR [volg_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_krd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_krd]  DEFAULT ('') FOR [auto_krd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_krd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_krd]  DEFAULT ((0)) FOR [volg_krd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_plc]  DEFAULT ('') FOR [auto_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_plc]  DEFAULT ((0)) FOR [volg_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_prl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_prl]  DEFAULT ('') FOR [auto_prl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_prl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_prl]  DEFAULT ((0)) FOR [volg_prl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__aut_hplg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__aut_hplg]  DEFAULT ('') FOR [aut_hplg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__vlg_hplg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__vlg_hplg]  DEFAULT ((0)) FOR [vlg_hplg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__auto_prb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__auto_prb]  DEFAULT ('') FOR [auto_prb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_prb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_prb]  DEFAULT ((0)) FOR [volg_prb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__volg_inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__volg_inl]  DEFAULT ((0)) FOR [volg_inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_00]  DEFAULT ((0)) FOR [folup_00]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_01]  DEFAULT ((0)) FOR [folup_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_02]  DEFAULT ((0)) FOR [folup_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_03]  DEFAULT ((0)) FOR [folup_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_04]  DEFAULT ((0)) FOR [folup_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_05]  DEFAULT ((0)) FOR [folup_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_06]  DEFAULT ((0)) FOR [folup_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_07]  DEFAULT ((0)) FOR [folup_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_08]  DEFAULT ((0)) FOR [folup_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auttij__folup_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auttij__] ADD  CONSTRAINT [DF_auttij__folup_09]  DEFAULT ((0)) FOR [folup_09]
END

