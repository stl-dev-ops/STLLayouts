SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[britak__](
	[bta__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bta__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btap_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btaf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lock_usr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[van__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tot__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[adr__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[adr__knp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedtel] [int] NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedfax] [int] NOT NULL,
	[fax___dr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel__knp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[sptelknp] [int] NOT NULL,
	[fax__knp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[spfaxknp] [int] NOT NULL,
	[faxknpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel__pkp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[sptelpkp] [int] NOT NULL,
	[fax__pkp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[spfaxpkp] [int] NOT NULL,
	[faxpkpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[adknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__nam] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__vnm] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__sex] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft_] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[ondtel__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen1_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen2_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwysrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[offa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dbfakref] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[prft_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__bon] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__bon] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[toc__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lay__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[titel___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamuitv] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvolgen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamvrt_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__trg] [date] NOT NULL,
	[uur__trg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_wtrg] [date] NOT NULL,
	[uur_wtrg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gedrukt_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktie___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamwtrg] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrtb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[upd_stmp] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[upd__crc] [int] NOT NULL,
	[transfyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[mail_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[reactdat] [date] NOT NULL,
	[reactuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bta__id1] PRIMARY KEY CLUSTERED 
(
	[bta__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'britaki13')
CREATE NONCLUSTERED INDEX [britaki13] ON [dbo].[britak__]
(
	[bst__bon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id2')
CREATE NONCLUSTERED INDEX [bta__id2] ON [dbo].[britak__]
(
	[kla__ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id3')
CREATE NONCLUSTERED INDEX [bta__id3] ON [dbo].[britak__]
(
	[lev__ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id4')
CREATE NONCLUSTERED INDEX [bta__id4] ON [dbo].[britak__]
(
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id5')
CREATE NONCLUSTERED INDEX [bta__id5] ON [dbo].[britak__]
(
	[ondtel__] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id6')
CREATE NONCLUSTERED INDEX [bta__id6] ON [dbo].[britak__]
(
	[ord__ref] ASC,
	[bsbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id7')
CREATE NONCLUSTERED INDEX [bta__id7] ON [dbo].[britak__]
(
	[mail_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id8')
CREATE NONCLUSTERED INDEX [bta__id8] ON [dbo].[britak__]
(
	[bon__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__id9')
CREATE NONCLUSTERED INDEX [bta__id9] ON [dbo].[britak__]
(
	[btaf_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__ida')
CREATE NONCLUSTERED INDEX [bta__ida] ON [dbo].[britak__]
(
	[btap_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__idb')
CREATE NONCLUSTERED INDEX [bta__idb] ON [dbo].[britak__]
(
	[kla__ref] ASC,
	[klknpref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[britak__]') AND name = N'bta__opv')
CREATE NONCLUSTERED INDEX [bta__opv] ON [dbo].[britak__]
(
	[opvolgen] ASC,
	[naamvrt_] ASC,
	[dat__trg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bta__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bta__ref]  DEFAULT ('') FOR [bta__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bta__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bta__srt]  DEFAULT ('1') FOR [bta__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__btap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__btap_ref]  DEFAULT ('') FOR [btap_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__btaf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__btaf_ref]  DEFAULT ('') FOR [btaf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lock_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lock_usr]  DEFAULT ('1') FOR [lock_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__datum___]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__uur_____]  DEFAULT ('  0:00') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__van__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__van__uur]  DEFAULT ('  0:00') FOR [van__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__tot__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__tot__uur]  DEFAULT ('  0:00') FOR [tot__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__duur____]  DEFAULT ('  0:00') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__adr__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__adr__srt]  DEFAULT ('0') FOR [adr__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__adr__knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__adr__knp]  DEFAULT ('1') FOR [adr__knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lok__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lok__oms]  DEFAULT ('') FOR [lok__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__speedtel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__speedtel]  DEFAULT ((0)) FOR [speedtel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__speedfax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__speedfax]  DEFAULT ((0)) FOR [speedfax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__fax___dr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__fax___dr]  DEFAULT ('Y') FOR [fax___dr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__tel__knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__tel__knp]  DEFAULT ('') FOR [tel__knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__sptelknp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__sptelknp]  DEFAULT ((0)) FOR [sptelknp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__fax__knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__fax__knp]  DEFAULT ('') FOR [fax__knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__spfaxknp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__spfaxknp]  DEFAULT ((0)) FOR [spfaxknp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__faxknpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__faxknpdr]  DEFAULT ('N') FOR [faxknpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__tel__pkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__tel__pkp]  DEFAULT ('') FOR [tel__pkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__sptelpkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__sptelpkp]  DEFAULT ((0)) FOR [sptelpkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__fax__pkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__fax__pkp]  DEFAULT ('') FOR [fax__pkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__spfaxpkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__spfaxpkp]  DEFAULT ((0)) FOR [spfaxpkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__faxpkpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__faxpkpdr]  DEFAULT ('N') FOR [faxpkpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lok__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lok__rpn]  DEFAULT ('') FOR [lok__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__klknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__klknpref]  DEFAULT ('') FOR [klknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lvknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lvknpref]  DEFAULT ('') FOR [lvknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__adknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__adknpref]  DEFAULT ('') FOR [adknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__knp__nam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__knp__nam]  DEFAULT ('') FOR [knp__nam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__knp__vnm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__knp__vnm]  DEFAULT ('') FOR [knp__vnm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__knp__sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__knp__sex]  DEFAULT ('') FOR [knp__sex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__betreft_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__betreft_]  DEFAULT ('') FOR [betreft_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__ondtel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__ondtel__]  DEFAULT ('') FOR [ondtel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__kommen1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__kommen1_]  DEFAULT ('') FOR [kommen1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__kommen2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__kommen2_]  DEFAULT ('') FOR [kommen2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__verwysrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__verwysrt]  DEFAULT ('') FOR [verwysrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__offa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__offa_ref]  DEFAULT ('') FOR [offa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__dbfakref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__dbfakref]  DEFAULT ('') FOR [dbfakref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__prft_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__prft_ref]  DEFAULT ('') FOR [prft_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bst__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bst__bon]  DEFAULT ('') FOR [bst__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__afr__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__afr__bon]  DEFAULT ('') FOR [afr__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__toc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__toc__ref]  DEFAULT ('') FOR [toc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__lay__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__lay__ref]  DEFAULT ('11') FOR [lay__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__titel___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__titel___]  DEFAULT ('') FOR [titel___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__uitv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__uitv_ref]  DEFAULT ('') FOR [uitv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__naamuitv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__naamuitv]  DEFAULT ('') FOR [naamuitv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__opvolgen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__opvolgen]  DEFAULT ('N') FOR [opvolgen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__naamvrt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__naamvrt_]  DEFAULT ('') FOR [naamvrt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__dat__trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__dat__trg]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [dat__trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__uur__trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__uur__trg]  DEFAULT ('  0:00') FOR [uur__trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__dat_wtrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__dat_wtrg]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [dat_wtrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__uur_wtrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__uur_wtrg]  DEFAULT ('  0:00') FOR [uur_wtrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__gedrukt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__gedrukt_]  DEFAULT ('N') FOR [gedrukt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__naamwtrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__naamwtrg]  DEFAULT ('') FOR [naamwtrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__vrtb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__vrtb_ref]  DEFAULT ('') FOR [vrtb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__upd_stmp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__upd_stmp]  DEFAULT ('') FOR [upd_stmp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__upd__crc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__upd__crc]  DEFAULT ((0)) FOR [upd__crc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__transfyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__transfyn]  DEFAULT ('Y') FOR [transfyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__brfcrit1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__brfcrit1]  DEFAULT ('') FOR [brfcrit1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__brfcrit2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__brfcrit2]  DEFAULT ('') FOR [brfcrit2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__brfcrit3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__brfcrit3]  DEFAULT ('') FOR [brfcrit3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__brfcrit4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__brfcrit4]  DEFAULT ('') FOR [brfcrit4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__brfcrit5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__brfcrit5]  DEFAULT ('') FOR [brfcrit5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__mail_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__mail_ref]  DEFAULT ('') FOR [mail_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__reactdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__reactdat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [reactdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__reactuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__reactuur]  DEFAULT ('  0:00') FOR [reactuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britak__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britak__] ADD  CONSTRAINT [DF_britak__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

