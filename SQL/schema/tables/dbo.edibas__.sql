SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[edibas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[edibas__](
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__dir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__dll] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__vlg] [int] NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[scope___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[senderid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid3] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid4] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid5] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[isndoms1] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isndoms2] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isndoms3] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isndoms4] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isndoms5] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksndoms1] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksndoms2] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksndoms3] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksndoms4] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksndoms5] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[werkzone] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[end__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout01] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout02] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout03] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout04] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layout05] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[filena01] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[filena02] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[filena03] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[filena04] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[filena05] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[parent_edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[create_condition_file] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [edibasi0] PRIMARY KEY CLUSTERED 
(
	[edi__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__dir]  DEFAULT ('') FOR [edi__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__srt]  DEFAULT ('') FOR [edi__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__typ]  DEFAULT ('') FOR [edi__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__dll]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__dll]  DEFAULT ('') FOR [edi__dll]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__grp__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__grp__typ]  DEFAULT ('') FOR [grp__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__edi__vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__edi__vlg]  DEFAULT ((0)) FOR [edi__vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__scope___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__scope___]  DEFAULT ('') FOR [scope___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__senderid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__senderid]  DEFAULT ('') FOR [senderid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__sendrid2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__sendrid2]  DEFAULT ('') FOR [sendrid2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__sendrid3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__sendrid3]  DEFAULT ('') FOR [sendrid3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__sendrid4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__sendrid4]  DEFAULT ('') FOR [sendrid4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__sendrid5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__sendrid5]  DEFAULT ('') FOR [sendrid5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__isndoms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__isndoms1]  DEFAULT ('') FOR [isndoms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__isndoms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__isndoms2]  DEFAULT ('') FOR [isndoms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__isndoms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__isndoms3]  DEFAULT ('') FOR [isndoms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__isndoms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__isndoms4]  DEFAULT ('') FOR [isndoms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__isndoms5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__isndoms5]  DEFAULT ('') FOR [isndoms5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__ksndoms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__ksndoms1]  DEFAULT ('') FOR [ksndoms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__ksndoms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__ksndoms2]  DEFAULT ('') FOR [ksndoms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__ksndoms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__ksndoms3]  DEFAULT ('') FOR [ksndoms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__ksndoms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__ksndoms4]  DEFAULT ('') FOR [ksndoms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__ksndoms5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__ksndoms5]  DEFAULT ('') FOR [ksndoms5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__werkzone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__werkzone]  DEFAULT ('') FOR [werkzone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__end__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__end__tst]  DEFAULT ('') FOR [end__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filename]  DEFAULT ('') FOR [filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layout01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layout01]  DEFAULT ('') FOR [layout01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layout02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layout02]  DEFAULT ('') FOR [layout02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layout03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layout03]  DEFAULT ('') FOR [layout03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layout04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layout04]  DEFAULT ('') FOR [layout04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__layout05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__layout05]  DEFAULT ('') FOR [layout05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filena01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filena01]  DEFAULT ('') FOR [filena01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filena02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filena02]  DEFAULT ('') FOR [filena02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filena03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filena03]  DEFAULT ('') FOR [filena03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filena04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filena04]  DEFAULT ('') FOR [filena04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__filena05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__filena05]  DEFAULT ('') FOR [filena05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__parent_edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__parent_edi__ref]  DEFAULT ('') FOR [parent_edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edibas__create_condition_file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edibas__] ADD  CONSTRAINT [DF_edibas__create_condition_file]  DEFAULT ('') FOR [create_condition_file]
END

