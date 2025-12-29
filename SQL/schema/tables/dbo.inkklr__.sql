SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inkklr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inkklr__](
	[ink__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__oms] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbtyd___] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[waskateg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exstel__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toeslvrb] [float] NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstduref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdvref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_rref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink_gkpe] [float] NOT NULL,
	[inkrgkpe] [float] NOT NULL,
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[color___] [int] NOT NULL,
	[cmyk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkblack] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [inkklri1] PRIMARY KEY CLUSTERED 
(
	[ink__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__ink__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__ink__srt]  DEFAULT ('') FOR [ink__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__ink__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__ink__oms]  DEFAULT ('') FOR [ink__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__vbtyd___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__vbtyd___]  DEFAULT ('') FOR [vbtyd___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__waskateg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__waskateg]  DEFAULT ('') FOR [waskateg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__exstel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__exstel__]  DEFAULT ('') FOR [exstel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__toeslvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__toeslvrb]  DEFAULT ((0)) FOR [toeslvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__kstduref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__kstduref]  DEFAULT ('') FOR [kstduref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__kstdrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__kstdrref]  DEFAULT ('') FOR [kstdrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__kstdvref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__kstdvref]  DEFAULT ('') FOR [kstdvref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__rbk_rref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__rbk_rref]  DEFAULT ('') FOR [rbk_rref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__ink_gkpe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__ink_gkpe]  DEFAULT ((0)) FOR [ink_gkpe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__inkrgkpe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__inkrgkpe]  DEFAULT ((0)) FOR [inkrgkpe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__srt_inkt]  DEFAULT ('') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__lak_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__lak_komm]  DEFAULT ('') FOR [lak_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__color___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__color___]  DEFAULT ((0)) FOR [color___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__cmyk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__cmyk____]  DEFAULT ('') FOR [cmyk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkklr__inkblack]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkklr__] ADD  CONSTRAINT [DF_inkklr__inkblack]  DEFAULT ('') FOR [inkblack]
END

