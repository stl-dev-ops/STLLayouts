SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artikn__EOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artikn__EOM](
	[art__ref] [varchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [varchar](1) COLLATE Latin1_General_CI_AS NULL,
	[b_akp_kg] [float] NULL,
	[b_akp_vl] [float] NULL,
	[l_akp_kg] [float] NULL,
	[l_akp_vl] [float] NULL,
	[g_akp_kg] [float] NULL,
	[g_akp_vl] [float] NULL,
	[nakprijs] [float] NULL,
	[dat_crea] [datetime] NULL,
	[user____] [varchar](30) COLLATE Latin1_General_CI_AS NULL,
	[dat_aank] [datetime] NULL,
	[dat_lev_] [datetime] NULL,
	[dat_verb] [datetime] NULL,
	[dat_tell] [datetime] NULL,
	[dat_begi] [datetime] NULL,
	[dat_comp] [datetime] NULL,
	[in_stock] [float] NULL,
	[rollen__] [float] NULL,
	[gemgew__] [float] NULL,
	[reserve_] [float] NULL,
	[in_best_] [float] NULL,
	[in___qrt] [float] NULL,
	[getelde_] [float] NULL,
	[comp_stc] [float] NULL,
	[getelder] [float] NULL,
	[comp_str] [float] NULL,
	[vak__ref] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[vak2_ref] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[jobnrlev] [varchar](40) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
