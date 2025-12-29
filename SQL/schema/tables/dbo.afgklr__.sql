SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgklr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgklr__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pms__num] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkt_opp] [float] NOT NULL,
	[inkt_pct] [float] NOT NULL,
	[bedruk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg___nr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg____nr] [int] NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink02ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink03ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink04ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink05ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink06ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink07ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink08ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_dl01] [float] NOT NULL,
	[ant_dl02] [float] NOT NULL,
	[ant_dl03] [float] NOT NULL,
	[ant_dl04] [float] NOT NULL,
	[ant_dl05] [float] NOT NULL,
	[ant_dl06] [float] NOT NULL,
	[ant_dl07] [float] NOT NULL,
	[ant_dl08] [float] NOT NULL,
	[antdltot] [float] NOT NULL,
	[plt__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcp___ap] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[klm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[layer_nr] [int] NOT NULL,
 CONSTRAINT [afgklri0] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[klr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgklr__]') AND name = N'afgklri1')
CREATE NONCLUSTERED INDEX [afgklri1] ON [dbo].[afgklr__]
(
	[afg__ref] ASC,
	[bedruk__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__klr__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__klr__vnr]  DEFAULT ('') FOR [klr__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__srt_inkt]  DEFAULT ('0') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__pms__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__pms__num]  DEFAULT ('') FOR [pms__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__inkt_opp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__inkt_opp]  DEFAULT ((0)) FOR [inkt_opp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__inkt_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__inkt_pct]  DEFAULT ((0)) FOR [inkt_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__bedruk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__bedruk__]  DEFAULT ('1') FOR [bedruk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__drg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__drg___nr]  DEFAULT ('0') FOR [drg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__dg____nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__dg____nr]  DEFAULT ((1)) FOR [dg____nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink01ref]  DEFAULT ('') FOR [ink01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink02ref]  DEFAULT ('') FOR [ink02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink03ref]  DEFAULT ('') FOR [ink03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink04ref]  DEFAULT ('') FOR [ink04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink05ref]  DEFAULT ('') FOR [ink05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink06ref]  DEFAULT ('') FOR [ink06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink07ref]  DEFAULT ('') FOR [ink07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ink08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ink08ref]  DEFAULT ('') FOR [ink08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl01]  DEFAULT ((0)) FOR [ant_dl01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl02]  DEFAULT ((0)) FOR [ant_dl02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl03]  DEFAULT ((0)) FOR [ant_dl03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl04]  DEFAULT ((0)) FOR [ant_dl04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl05]  DEFAULT ((0)) FOR [ant_dl05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl06]  DEFAULT ((0)) FOR [ant_dl06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl07]  DEFAULT ((0)) FOR [ant_dl07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__ant_dl08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__ant_dl08]  DEFAULT ((0)) FOR [ant_dl08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__antdltot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__antdltot]  DEFAULT ((0)) FOR [antdltot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__plt__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__plt__tst]  DEFAULT ('0') FOR [plt__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__rcp___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__rcp___ap]  DEFAULT ('') FOR [rcp___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__klm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__klm__ref]  DEFAULT ('') FOR [klm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklr__layer_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklr__] ADD  CONSTRAINT [DF_afgklr__layer_nr]  DEFAULT ((1)) FOR [layer_nr]
END

