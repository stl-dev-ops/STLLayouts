SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tstbas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tstbas__](
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fldname_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[caption_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[sortdesc] [bit] NOT NULL,
 CONSTRAINT [tstbasi1] PRIMARY KEY CLUSTERED 
(
	[tst__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__tst__ref]  DEFAULT ('') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__fldname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__fldname_]  DEFAULT ('') FOR [fldname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__caption_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__caption_]  DEFAULT ('') FOR [caption_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstbas__sortdesc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstbas__] ADD  CONSTRAINT [DF_tstbas__sortdesc]  DEFAULT ((0)) FOR [sortdesc]
END

