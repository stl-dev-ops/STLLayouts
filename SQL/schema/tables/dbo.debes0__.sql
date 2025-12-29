SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debes0__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[debes0__](
	[filler0_] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[soortdc_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[veld____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__dat] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[belastb_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[korting_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kosten__] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[filler1_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdat1_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[betbed1_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[betmod1_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdat2_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[betbed2_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[betmod2_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdat3_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[betbed3_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[betmod3_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwpct__] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[filler2_] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantmaan] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kode_mut] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[filler3_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[periode_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[boekjaar] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[filler4_] [nvarchar](36) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [debes0i0] PRIMARY KEY CLUSTERED 
(
	[filler0_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__filler0_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__filler0_]  DEFAULT ('') FOR [filler0_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__soortdc_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__soortdc_]  DEFAULT ('') FOR [soortdc_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__dok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__dok__ref]  DEFAULT ('') FOR [dok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__veld____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__veld____]  DEFAULT ('') FOR [veld____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__fak__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__fak__dat]  DEFAULT ('') FOR [fak__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__bedrag__]  DEFAULT ('') FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__belastb_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__belastb_]  DEFAULT ('') FOR [belastb_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__korting_]  DEFAULT ('') FOR [korting_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__kosten__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__kosten__]  DEFAULT ('') FOR [kosten__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__filler1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__filler1_]  DEFAULT ('') FOR [filler1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betdat1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betdat1_]  DEFAULT ('') FOR [betdat1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betbed1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betbed1_]  DEFAULT ('') FOR [betbed1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betmod1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betmod1_]  DEFAULT ('') FOR [betmod1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betdat2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betdat2_]  DEFAULT ('') FOR [betdat2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betbed2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betbed2_]  DEFAULT ('') FOR [betbed2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betmod2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betmod2_]  DEFAULT ('') FOR [betmod2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betdat3_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betdat3_]  DEFAULT ('') FOR [betdat3_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betbed3_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betbed3_]  DEFAULT ('') FOR [betbed3_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__betmod3_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__betmod3_]  DEFAULT ('') FOR [betmod3_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__btwpct__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__btwpct__]  DEFAULT ('') FOR [btwpct__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__filler2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__filler2_]  DEFAULT ('') FOR [filler2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__aantmaan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__aantmaan]  DEFAULT ('') FOR [aantmaan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__kode_mut]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__kode_mut]  DEFAULT ('') FOR [kode_mut]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__filler3_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__filler3_]  DEFAULT ('') FOR [filler3_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__periode_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__periode_]  DEFAULT ('') FOR [periode_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__boekjaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__boekjaar]  DEFAULT ('') FOR [boekjaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_debes0__filler4_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[debes0__] ADD  CONSTRAINT [DF_debes0__filler4_]  DEFAULT ('') FOR [filler4_]
END

