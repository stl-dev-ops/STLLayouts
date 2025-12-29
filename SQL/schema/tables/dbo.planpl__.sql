SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planpl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planpl__](
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktie___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[priorite] [int] NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pct_duur] [int] NOT NULL,
	[min_duur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl_duur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan__iu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwe_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[capacit_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kleur__1] [int] NOT NULL,
	[kleur__2] [int] NOT NULL,
	[aant_dgn] [int] NOT NULL,
	[atl_meld] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl_link] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pldg__iu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[steltyd_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[multireg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bas___10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[waspms_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[waspms_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[maxwistd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[stl_duur_upon_scheduling] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[shadow_machine] [bit] NOT NULL,
	[capacity_id] [int] NULL,
	[efficiency_gain_relative_cost] [int] NOT NULL,
	[scheduling_optimization] [bit] NOT NULL,
	[frozen_days] [int] NULL,
	[frozen_hours] [int] NULL,
 CONSTRAINT [id1_plpl] PRIMARY KEY CLUSTERED 
(
	[plpl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__priorite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__priorite]  DEFAULT ((0)) FOR [priorite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__pct_duur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__pct_duur]  DEFAULT ((0)) FOR [pct_duur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__min_duur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__min_duur]  DEFAULT ('') FOR [min_duur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__stl_duur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__stl_duur]  DEFAULT ('') FOR [stl_duur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__plan__iu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__plan__iu]  DEFAULT ('') FOR [plan__iu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__plwe_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__plwe_ref]  DEFAULT ('') FOR [plwe_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__capacit_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__capacit_]  DEFAULT ((1)) FOR [capacit_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__kleur__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__kleur__1]  DEFAULT ((0)) FOR [kleur__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__kleur__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__kleur__2]  DEFAULT ((0)) FOR [kleur__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__aant_dgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__aant_dgn]  DEFAULT ((0)) FOR [aant_dgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__atl_meld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__atl_meld]  DEFAULT ('N') FOR [atl_meld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__dvl_link]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__dvl_link]  DEFAULT ('N') FOR [dvl_link]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__status__]  DEFAULT ('0') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__pldg__iu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__pldg__iu]  DEFAULT ('') FOR [pldg__iu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tsttag_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tsttag_1]  DEFAULT ('') FOR [tsttag_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__steltyd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__steltyd_]  DEFAULT ('N') FOR [steltyd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___01]  DEFAULT ('') FOR [tyd___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___02]  DEFAULT ('') FOR [tyd___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___03]  DEFAULT ('') FOR [tyd___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___04]  DEFAULT ('') FOR [tyd___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___05]  DEFAULT ('') FOR [tyd___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___06]  DEFAULT ('') FOR [tyd___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___07]  DEFAULT ('') FOR [tyd___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___08]  DEFAULT ('') FOR [tyd___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__multireg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__multireg]  DEFAULT ('1') FOR [multireg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___09]  DEFAULT ('') FOR [tyd___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___10]  DEFAULT ('') FOR [tyd___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___11]  DEFAULT ('') FOR [tyd___11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___12]  DEFAULT ('') FOR [tyd___12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___13]  DEFAULT ('') FOR [tyd___13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___14]  DEFAULT ('') FOR [tyd___14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___15]  DEFAULT ('') FOR [tyd___15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___16]  DEFAULT ('') FOR [tyd___16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___17]  DEFAULT ('') FOR [tyd___17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___18]  DEFAULT ('') FOR [tyd___18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___19]  DEFAULT ('') FOR [tyd___19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__tyd___20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__tyd___20]  DEFAULT ('') FOR [tyd___20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___01]  DEFAULT ('') FOR [bas___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___02]  DEFAULT ('') FOR [bas___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___03]  DEFAULT ('') FOR [bas___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___04]  DEFAULT ('') FOR [bas___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___05]  DEFAULT ('') FOR [bas___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___06]  DEFAULT ('') FOR [bas___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___07]  DEFAULT ('') FOR [bas___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___08]  DEFAULT ('') FOR [bas___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___09]  DEFAULT ('') FOR [bas___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__bas___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__bas___10]  DEFAULT ('') FOR [bas___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__waspms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__waspms_1]  DEFAULT ('') FOR [waspms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__waspms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__waspms_2]  DEFAULT ('') FOR [waspms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__maxwistd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__maxwistd]  DEFAULT ('') FOR [maxwistd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__stl_duur_upon_scheduling]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__stl_duur_upon_scheduling]  DEFAULT ('') FOR [stl_duur_upon_scheduling]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__shadow_machine]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__shadow_machine]  DEFAULT ((0)) FOR [shadow_machine]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__efficiency_gain_relative_cost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__efficiency_gain_relative_cost]  DEFAULT ((1)) FOR [efficiency_gain_relative_cost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl__scheduling_optimization]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl__] ADD  CONSTRAINT [DF_planpl__scheduling_optimization]  DEFAULT ((1)) FOR [scheduling_optimization]
END

