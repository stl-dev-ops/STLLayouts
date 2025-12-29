SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ondtel__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ondtel__](
	[ond__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ondtel__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__ond] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft_] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[btrf_ovs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvolgen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvlgdag] [int] NOT NULL,
	[mobile__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamvrt_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktie___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwijs_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[criteria] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lay__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_msg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[use_sfdc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__src] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlopvlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__clc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__obg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__vrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_chef] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlopvno] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_opvd] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_naar] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [idx_otel] PRIMARY KEY CLUSTERED 
(
	[ondtel__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__ond__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__ond__srt]  DEFAULT ('') FOR [ond__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__ondtel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__ondtel__]  DEFAULT ('') FOR [ondtel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__vrz__ond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__vrz__ond]  DEFAULT ('') FOR [vrz__ond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft_]  DEFAULT ('') FOR [betreft_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft2]  DEFAULT ('') FOR [betreft2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft3]  DEFAULT ('') FOR [betreft3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft4]  DEFAULT ('') FOR [betreft4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft5]  DEFAULT ('') FOR [betreft5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft6]  DEFAULT ('') FOR [betreft6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft7]  DEFAULT ('') FOR [betreft7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft8]  DEFAULT ('') FOR [betreft8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__betreft9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__betreft9]  DEFAULT ('') FOR [betreft9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__btrf_ovs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__btrf_ovs]  DEFAULT ('') FOR [btrf_ovs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml__ref]  DEFAULT ('') FOR [eml__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__opvolgen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__opvolgen]  DEFAULT ('') FOR [opvolgen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__opvlgdag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__opvlgdag]  DEFAULT ((0)) FOR [opvlgdag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__mobile__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__mobile__]  DEFAULT ('') FOR [mobile__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__naamvrt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__naamvrt_]  DEFAULT ('') FOR [naamvrt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__verwijs_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__verwijs_]  DEFAULT ('') FOR [verwijs_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__criteria]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__criteria]  DEFAULT ('') FOR [criteria]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__lay__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__lay__ref]  DEFAULT ('') FOR [lay__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__blok_msg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__blok_msg]  DEFAULT ('') FOR [blok_msg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__tsttag_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__tsttag_1]  DEFAULT ('') FOR [tsttag_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__tsttag_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__tsttag_2]  DEFAULT ('') FOR [tsttag_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__tsttag_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__tsttag_3]  DEFAULT ('') FOR [tsttag_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__use_sfdc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__use_sfdc]  DEFAULT ('') FOR [use_sfdc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml__src]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml__src]  DEFAULT ('') FOR [eml__src]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__emlopvlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__emlopvlg]  DEFAULT ('') FOR [emlopvlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml__clc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml__clc]  DEFAULT ('') FOR [eml__clc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml__obg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml__obg]  DEFAULT ('') FOR [eml__obg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml__vrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml__vrt]  DEFAULT ('') FOR [eml__vrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml_chef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml_chef]  DEFAULT ('') FOR [eml_chef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__emlopvno]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__emlopvno]  DEFAULT ('') FOR [emlopvno]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml_opvd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml_opvd]  DEFAULT ('') FOR [eml_opvd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondtel__eml_naar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondtel__] ADD  CONSTRAINT [DF_ondtel__eml_naar]  DEFAULT ('') FOR [eml_naar]
END

