SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordrub__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordrub__](
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[gord_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [int] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machines] [float] NOT NULL,
	[overhead] [float] NOT NULL,
	[afschr__] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[procap_1] [float] NOT NULL,
	[procap_2] [float] NOT NULL,
	[papier__] [float] NOT NULL,
	[grdvrb__] [float] NOT NULL,
	[aant_pap] [float] NOT NULL,
	[aant_grd] [float] NOT NULL,
	[ondaan__] [float] NOT NULL,
	[aant__oa] [float] NOT NULL,
	[vkp_kost] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[markt___] [float] NOT NULL,
	[prop_omz] [float] NOT NULL,
	[lonen_tn] [float] NOT NULL,
	[machintn] [float] NOT NULL,
	[overh_tn] [float] NOT NULL,
	[papiertn] [float] NOT NULL,
	[grdvrbtn] [float] NOT NULL,
	[ondaantn] [float] NOT NULL,
	[vst___tn] [float] NOT NULL,
	[hlpgrpnk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ordrub_2] PRIMARY KEY CLUSTERED 
(
	[produktf] ASC,
	[ord__ref] ASC,
	[suborder] ASC,
	[rbk__ref] ASC,
	[gord_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordrub__]') AND name = N'ordrub_4')
CREATE NONCLUSTERED INDEX [ordrub_4] ON [dbo].[ordrub__]
(
	[ord__ref] ASC,
	[rbk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordrub__]') AND name = N'ordrubi7')
CREATE UNIQUE NONCLUSTERED INDEX [ordrubi7] ON [dbo].[ordrub__]
(
	[produktf] ASC,
	[ord__ref] ASC,
	[rbk__ref] ASC,
	[suborder] ASC,
	[gord_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__gord_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__gord_ref]  DEFAULT ('') FOR [gord_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__duur____]  DEFAULT ((0)) FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__machines]  DEFAULT ((0)) FOR [machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__overhead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__overhead]  DEFAULT ((0)) FOR [overhead]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__afschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__afschr__]  DEFAULT ((0)) FOR [afschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__procap_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__procap_1]  DEFAULT ((0)) FOR [procap_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__procap_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__procap_2]  DEFAULT ((0)) FOR [procap_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__papier__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__papier__]  DEFAULT ((0)) FOR [papier__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__grdvrb__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__grdvrb__]  DEFAULT ((0)) FOR [grdvrb__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__aant_pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__aant_pap]  DEFAULT ((0)) FOR [aant_pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__aant_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__aant_grd]  DEFAULT ((0)) FOR [aant_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__aant__oa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__aant__oa]  DEFAULT ((0)) FOR [aant__oa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__vkp_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__vkp_kost]  DEFAULT ((0)) FOR [vkp_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__markt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__markt___]  DEFAULT ((0)) FOR [markt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__prop_omz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__prop_omz]  DEFAULT ((0)) FOR [prop_omz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__lonen_tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__lonen_tn]  DEFAULT ((0)) FOR [lonen_tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__machintn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__machintn]  DEFAULT ((0)) FOR [machintn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__overh_tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__overh_tn]  DEFAULT ((0)) FOR [overh_tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__papiertn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__papiertn]  DEFAULT ((0)) FOR [papiertn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__grdvrbtn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__grdvrbtn]  DEFAULT ((0)) FOR [grdvrbtn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__ondaantn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__ondaantn]  DEFAULT ((0)) FOR [ondaantn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__vst___tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__vst___tn]  DEFAULT ((0)) FOR [vst___tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordrub__hlpgrpnk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordrub__] ADD  CONSTRAINT [DF_ordrub__hlpgrpnk]  DEFAULT ('') FOR [hlpgrpnk]
END

