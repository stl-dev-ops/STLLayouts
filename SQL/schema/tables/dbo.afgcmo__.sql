SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgcmo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgcmo__](
	[cmb__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbopref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbopvnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbopoms] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit____] [int] NOT NULL,
	[det01ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det02ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det03ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det04ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det05ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det06ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det07ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det08ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det09ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[cal01ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [float] NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedruk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg___nr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkt_pct] [float] NOT NULL,
	[rcp___ap] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](120) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](120) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](120) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut_crea] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[det10ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det11ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det12ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det13ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det14ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det15ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det16ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det17ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[det18ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[klm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[layer_nr] [int] NOT NULL,
 CONSTRAINT [afgcmo_1] PRIMARY KEY CLUSTERED 
(
	[cmb__ref] ASC,
	[dg___ref] ASC,
	[cmbopref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgcmo__]') AND name = N'afgcmo_2')
CREATE NONCLUSTERED INDEX [afgcmo_2] ON [dbo].[afgcmo__]
(
	[opo__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__cmb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__cmb__ref]  DEFAULT ('') FOR [cmb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__cmbopref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__cmbopref]  DEFAULT ('') FOR [cmbopref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__cmbopvnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__cmbopvnr]  DEFAULT ('') FOR [cmbopvnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__opo__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__opo__ref]  DEFAULT ('') FOR [opo__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__cmbopoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__cmbopoms]  DEFAULT ('') FOR [cmbopoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__unit____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__unit____]  DEFAULT ((0)) FOR [unit____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det01ref]  DEFAULT ('') FOR [det01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det02ref]  DEFAULT ('') FOR [det02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det03ref]  DEFAULT ('') FOR [det03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det04ref]  DEFAULT ('') FOR [det04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det05ref]  DEFAULT ('') FOR [det05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det06ref]  DEFAULT ('') FOR [det06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det07ref]  DEFAULT ('') FOR [det07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det08ref]  DEFAULT ('') FOR [det08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det09ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det09ref]  DEFAULT ('') FOR [det09ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__cal01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__cal01ref]  DEFAULT ('') FOR [cal01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__afg01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__afg01ref]  DEFAULT ('') FOR [afg01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__breedte_]  DEFAULT ((0.0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__bedruk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__bedruk__]  DEFAULT ('') FOR [bedruk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__drg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__drg___nr]  DEFAULT ('') FOR [drg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__srt_inkt]  DEFAULT ('') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__inkt_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__inkt_pct]  DEFAULT ((0.0)) FOR [inkt_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__rcp___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__rcp___ap]  DEFAULT ('') FOR [rcp___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__aut_crea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__aut_crea]  DEFAULT ('0') FOR [aut_crea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det10ref]  DEFAULT ('') FOR [det10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det11ref]  DEFAULT ('') FOR [det11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det12ref]  DEFAULT ('') FOR [det12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det13ref]  DEFAULT ('') FOR [det13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det14ref]  DEFAULT ('') FOR [det14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det15ref]  DEFAULT ('') FOR [det15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det16ref]  DEFAULT ('') FOR [det16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det17ref]  DEFAULT ('') FOR [det17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__det18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__det18ref]  DEFAULT ('') FOR [det18ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__klm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__klm__ref]  DEFAULT ('') FOR [klm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmo__layer_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmo__] ADD  CONSTRAINT [DF_afgcmo__layer_nr]  DEFAULT ((1)) FOR [layer_nr]
END

