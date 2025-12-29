SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_mats__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[z_mats__](
	[art__ref] [char](6) COLLATE Latin1_General_CI_AS NULL,
	[liner_le] [int] NULL,
	[liner_re] [int] NULL,
	[faces_le] [int] NULL,
	[faces_re] [int] NULL,
	[length__] [int] NULL,
	[fpm_____] [int] NULL,
	[setup___] [char](6) COLLATE Latin1_General_CI_AS NULL,
	[min_chan] [char](6) COLLATE Latin1_General_CI_AS NULL,
	[start_ro] [int] NULL,
	[end___ro] [int] NULL,
	[cost_wst] [float] NULL,
	[lbs_adhe] [int] NULL,
	[corona__] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[apply_ad] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[notes___] [char](100) COLLATE Latin1_General_CI_AS NULL,
	[pm_zon_a] [int] NULL,
	[pm_zon_b] [int] NULL,
	[pm_zon_c] [int] NULL,
	[pm_zon_d] [int] NULL,
	[pg_zon_a] [int] NULL,
	[pg_zon_b] [int] NULL,
	[filter__] [int] NULL,
	[hose____] [int] NULL,
	[lft_unwd] [char](30) COLLATE Latin1_General_CI_AS NULL,
	[rgt_unwd] [char](30) COLLATE Latin1_General_CI_AS NULL,
	[re__wind] [int] NULL,
	[chilroll] [int] NULL,
	[taper___] [int] NULL,
	[lon_post] [char](30) COLLATE Latin1_General_CI_AS NULL,
	[lon_pres] [char](30) COLLATE Latin1_General_CI_AS NULL,
	[aux_zon_] [int] NULL,
	[shift___] [float] NULL
) ON [PRIMARY]
END
