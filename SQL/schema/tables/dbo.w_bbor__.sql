SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_bbor__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_bbor__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[plts_kod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[best_dat] [date] NOT NULL,
	[leverdat] [date] NOT NULL,
	[leverkod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[leverkom] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplag_bm] [float] NOT NULL,
	[extra_bm] [float] NOT NULL,
	[voorz_bd] [float] NOT NULL,
	[kalkulat] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bbor_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_bbor] PRIMARY KEY CLUSTERED 
(
	[bbor_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__plts_kod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__plts_kod]  DEFAULT ('') FOR [plts_kod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__best_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__best_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [best_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__leverdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__leverdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [leverdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__leverkod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__leverkod]  DEFAULT ('') FOR [leverkod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__leverkom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__leverkom]  DEFAULT ('') FOR [leverkom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__oplag_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__oplag_bm]  DEFAULT ((0)) FOR [oplag_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__extra_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__extra_bm]  DEFAULT ((0)) FOR [extra_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__voorz_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__voorz_bd]  DEFAULT ((0)) FOR [voorz_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__kalkulat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__kalkulat]  DEFAULT ('') FOR [kalkulat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__bbor_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__bbor_ref]  DEFAULT ('') FOR [bbor_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bbor__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bbor__] ADD  CONSTRAINT [DF_w_bbor__ord_begl]  DEFAULT ('') FOR [ord_begl]
END

