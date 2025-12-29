SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[exfint__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[exfint__](
	[hint_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6b] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_8_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[bedrintr] [float] NOT NULL,
	[gwstintr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [exfinti2] PRIMARY KEY CLUSTERED 
(
	[hint_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__hint_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__hint_ref]  DEFAULT ('') FOR [hint_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__aang_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__aang_srt]  DEFAULT ('') FOR [aang_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__aang_fir]  DEFAULT ('') FOR [aang_fir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_6b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_6b]  DEFAULT ('') FOR [kolom_6b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_8_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_8_]  DEFAULT ('') FOR [kolom_8_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__bedrintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__bedrintr]  DEFAULT ((0)) FOR [bedrintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_exfint__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[exfint__] ADD  CONSTRAINT [DF_exfint__gwstintr]  DEFAULT ('') FOR [gwstintr]
END

