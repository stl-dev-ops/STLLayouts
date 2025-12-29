SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budrea__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budrea__](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[beg__dat] [date] NOT NULL,
	[end__dat] [date] NOT NULL,
	[brulo_bu] [float] NOT NULL,
	[prclo_bu] [float] NOT NULL,
	[bet_vkpb] [float] NOT NULL,
	[afschr__] [float] NOT NULL,
	[rente___] [float] NOT NULL,
	[energ_bu] [float] NOT NULL,
	[herst_bu] [float] NOT NULL,
	[overh_bu] [float] NOT NULL,
	[tbet_uur] [int] NOT NULL,
	[vkpb_uur] [int] NOT NULL,
	[uurkost_] [float] NOT NULL,
	[werk_uur] [int] NOT NULL,
	[orderuur] [int] NOT NULL,
	[nvkpbuur] [int] NOT NULL,
	[herdouur] [int] NOT NULL,
	[brulo_bh] [float] NOT NULL,
	[extlo_bh] [float] NOT NULL,
	[energ_bh] [float] NOT NULL,
	[herst_bh] [float] NOT NULL,
	[overh_bh] [float] NOT NULL,
	[vkp_prys] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budr_id2] PRIMARY KEY CLUSTERED 
(
	[wp___ref] ASC,
	[beg__dat] ASC,
	[end__dat] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__maand___]  DEFAULT ('') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__beg__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__beg__dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [beg__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__end__dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__brulo_bu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__brulo_bu]  DEFAULT ((0)) FOR [brulo_bu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__prclo_bu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__prclo_bu]  DEFAULT ((0)) FOR [prclo_bu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__bet_vkpb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__bet_vkpb]  DEFAULT ((0)) FOR [bet_vkpb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__afschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__afschr__]  DEFAULT ((0)) FOR [afschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__rente___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__rente___]  DEFAULT ((0)) FOR [rente___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__energ_bu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__energ_bu]  DEFAULT ((0)) FOR [energ_bu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__herst_bu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__herst_bu]  DEFAULT ((0)) FOR [herst_bu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__overh_bu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__overh_bu]  DEFAULT ((0)) FOR [overh_bu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__tbet_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__tbet_uur]  DEFAULT ((0)) FOR [tbet_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__vkpb_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__vkpb_uur]  DEFAULT ((0)) FOR [vkpb_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__uurkost_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__uurkost_]  DEFAULT ((0)) FOR [uurkost_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__werk_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__werk_uur]  DEFAULT ((0)) FOR [werk_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__orderuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__orderuur]  DEFAULT ((0)) FOR [orderuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__nvkpbuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__nvkpbuur]  DEFAULT ((0)) FOR [nvkpbuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__herdouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__herdouur]  DEFAULT ((0)) FOR [herdouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__brulo_bh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__brulo_bh]  DEFAULT ((0)) FOR [brulo_bh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__extlo_bh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__extlo_bh]  DEFAULT ((0)) FOR [extlo_bh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__energ_bh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__energ_bh]  DEFAULT ((0)) FOR [energ_bh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__herst_bh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__herst_bh]  DEFAULT ((0)) FOR [herst_bh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__overh_bh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__overh_bh]  DEFAULT ((0)) FOR [overh_bh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budrea__vkp_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budrea__] ADD  CONSTRAINT [DF_budrea__vkp_prys]  DEFAULT ((0)) FOR [vkp_prys]
END

