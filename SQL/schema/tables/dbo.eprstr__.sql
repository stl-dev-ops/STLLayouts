SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprstr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprstr__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[trm__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omwentel] [float] NOT NULL,
	[omwentmm] [float] NOT NULL,
	[kom_tand] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_inch] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[aantal_0] [int] NOT NULL,
	[aantal_1] [int] NOT NULL,
	[aantal_2] [int] NOT NULL,
	[aantal_3] [int] NOT NULL,
	[aantal_4] [int] NOT NULL,
	[aantal_5] [int] NOT NULL,
	[aantal_6] [int] NOT NULL,
	[aantal_7] [int] NOT NULL,
	[prystr_0] [float] NOT NULL,
	[prystr_1] [float] NOT NULL,
	[prystr_2] [float] NOT NULL,
	[prystr_3] [float] NOT NULL,
	[prystr_4] [float] NOT NULL,
	[prystr_5] [float] NOT NULL,
	[prystr_6] [float] NOT NULL,
	[prystr_7] [float] NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___in] [float] NOT NULL,
	[spd_____] [int] NOT NULL,
	[spdd____] [float] NOT NULL,
	[spd_slag] [int] NOT NULL,
	[arth0ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth4ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth5ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth6ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth7ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprstri1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[trm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__trm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__trm__ref]  DEFAULT ('') FOR [trm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__omwentel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__omwentel]  DEFAULT ((0)) FOR [omwentel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__omwentmm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__omwentmm]  DEFAULT ((0)) FOR [omwentmm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__kom_tand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__kom_tand]  DEFAULT ('') FOR [kom_tand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__kom_inch]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__kom_inch]  DEFAULT ('') FOR [kom_inch]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_0]  DEFAULT ((0)) FOR [aantal_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_1]  DEFAULT ((0)) FOR [aantal_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_2]  DEFAULT ((0)) FOR [aantal_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_3]  DEFAULT ((0)) FOR [aantal_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_4]  DEFAULT ((0)) FOR [aantal_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_5]  DEFAULT ((0)) FOR [aantal_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_6]  DEFAULT ((0)) FOR [aantal_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__aantal_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__aantal_7]  DEFAULT ((0)) FOR [aantal_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_0]  DEFAULT ((0)) FOR [prystr_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_1]  DEFAULT ((0)) FOR [prystr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_2]  DEFAULT ((0)) FOR [prystr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_3]  DEFAULT ((0)) FOR [prystr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_4]  DEFAULT ((0)) FOR [prystr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_5]  DEFAULT ((0)) FOR [prystr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_6]  DEFAULT ((0)) FOR [prystr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__prystr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__prystr_7]  DEFAULT ((0)) FOR [prystr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__spd_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__spd_____]  DEFAULT ((0)) FOR [spd_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__spdd____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__spdd____]  DEFAULT ((0)) FOR [spdd____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__spd_slag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__spd_slag]  DEFAULT ((0)) FOR [spd_slag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth0ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth0ref]  DEFAULT ('') FOR [arth0ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth1ref]  DEFAULT ('') FOR [arth1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth2ref]  DEFAULT ('') FOR [arth2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth3ref]  DEFAULT ('') FOR [arth3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth4ref]  DEFAULT ('') FOR [arth4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth5ref]  DEFAULT ('') FOR [arth5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth6ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth6ref]  DEFAULT ('') FOR [arth6ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprstr__arth7ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprstr__] ADD  CONSTRAINT [DF_eprstr__arth7ref]  DEFAULT ('') FOR [arth7ref]
END

