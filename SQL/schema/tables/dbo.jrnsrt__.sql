SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jrnsrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jrnsrt__](
	[jrn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[orig_vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_toeohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_toerek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_toedek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_orfoml] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_omzet_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[o_prokla] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_regcre] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_nrmord] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_ovdord] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_nt_ord] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_nrmrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_ovdrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_teontf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_wacht_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_vrrd__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_temakf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_omzet_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_toedek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_nrmohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_ovdohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_toeohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_ovtohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_nrmrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_ovdrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_toerek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_ovtrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_corant] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_corwrd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_pryvod] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_prynad] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_teontf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_wacht_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_nrmohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_extor1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_extor2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_toeohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_toerek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_toedek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_nrmrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_pryvrs] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_admohw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_admrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_admdek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jrn__id1] PRIMARY KEY CLUSTERED 
(
	[jrn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__jrn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__jrn__ref]  DEFAULT ('') FOR [jrn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__jrn__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__jrn__rpn]  DEFAULT ('') FOR [jrn__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__orig_vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__orig_vkp]  DEFAULT ('') FOR [orig_vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_toeohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_toeohw]  DEFAULT ('') FOR [o_toeohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_toerek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_toerek]  DEFAULT ('') FOR [o_toerek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_toedek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_toedek]  DEFAULT ('') FOR [o_toedek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_orfoml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_orfoml]  DEFAULT ('') FOR [o_orfoml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_omzet_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_omzet_]  DEFAULT ('') FOR [o_omzet_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__o_prokla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__o_prokla]  DEFAULT ('') FOR [o_prokla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_regcre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_regcre]  DEFAULT ('') FOR [t_regcre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_nrmord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_nrmord]  DEFAULT ('') FOR [t_nrmord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_ovdord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_ovdord]  DEFAULT ('') FOR [t_ovdord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_nt_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_nt_ord]  DEFAULT ('') FOR [t_nt_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_nrmrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_nrmrek]  DEFAULT ('') FOR [t_nrmrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__t_ovdrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__t_ovdrek]  DEFAULT ('') FOR [t_ovdrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_teontf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_teontf]  DEFAULT ('') FOR [v_teontf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_wacht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_wacht_]  DEFAULT ('') FOR [v_wacht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_vrrd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_vrrd__]  DEFAULT ('') FOR [v_vrrd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_temakf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_temakf]  DEFAULT ('') FOR [v_temakf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_omzet_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_omzet_]  DEFAULT ('') FOR [v_omzet_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_toedek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_toedek]  DEFAULT ('') FOR [v_toedek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_nrmohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_nrmohw]  DEFAULT ('') FOR [v_nrmohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_ovdohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_ovdohw]  DEFAULT ('') FOR [v_ovdohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_toeohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_toeohw]  DEFAULT ('') FOR [v_toeohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_ovtohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_ovtohw]  DEFAULT ('') FOR [v_ovtohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_nrmrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_nrmrek]  DEFAULT ('') FOR [v_nrmrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_ovdrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_ovdrek]  DEFAULT ('') FOR [v_ovdrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_toerek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_toerek]  DEFAULT ('') FOR [v_toerek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_ovtrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_ovtrek]  DEFAULT ('') FOR [v_ovtrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_corant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_corant]  DEFAULT ('') FOR [v_corant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_corwrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_corwrd]  DEFAULT ('') FOR [v_corwrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_pryvod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_pryvod]  DEFAULT ('') FOR [v_pryvod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__v_prynad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__v_prynad]  DEFAULT ('') FOR [v_prynad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_teontf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_teontf]  DEFAULT ('') FOR [w_teontf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_wacht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_wacht_]  DEFAULT ('') FOR [w_wacht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_nrmohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_nrmohw]  DEFAULT ('') FOR [w_nrmohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_extor1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_extor1]  DEFAULT ('') FOR [w_extor1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_extor2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_extor2]  DEFAULT ('') FOR [w_extor2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_toeohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_toeohw]  DEFAULT ('') FOR [w_toeohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_toerek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_toerek]  DEFAULT ('') FOR [w_toerek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_toedek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_toedek]  DEFAULT ('') FOR [w_toedek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_nrmrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_nrmrek]  DEFAULT ('') FOR [w_nrmrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__w_pryvrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__w_pryvrs]  DEFAULT ('') FOR [w_pryvrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__a_admohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__a_admohw]  DEFAULT ('') FOR [a_admohw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__a_admrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__a_admrek]  DEFAULT ('') FOR [a_admrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jrnsrt__a_admdek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jrnsrt__] ADD  CONSTRAINT [DF_jrnsrt__a_admdek]  DEFAULT ('') FOR [a_admdek]
END

