SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[macgrp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[macgrp__](
	[magr_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs0_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs1_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs2_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs3_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs4_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs5_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs6_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs7_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs8_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs9_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs10ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs11ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs12ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs13ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs14ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs15ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs16ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs17ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs18ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs19ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs20ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs21ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs22ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs23ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs24ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs25ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs26ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs27ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs28ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs29ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs30ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs31ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs32ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs33ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs34ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs35ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs36ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs37ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs38ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs39ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [macgrpi1] PRIMARY KEY CLUSTERED 
(
	[magr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__magr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__magr_ref]  DEFAULT ('') FOR [magr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs0_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs0_ref]  DEFAULT ('') FOR [prs0_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs1_ref]  DEFAULT ('') FOR [prs1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs2_ref]  DEFAULT ('') FOR [prs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs3_ref]  DEFAULT ('') FOR [prs3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs4_ref]  DEFAULT ('') FOR [prs4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs5_ref]  DEFAULT ('') FOR [prs5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs6_ref]  DEFAULT ('') FOR [prs6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs7_ref]  DEFAULT ('') FOR [prs7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs8_ref]  DEFAULT ('') FOR [prs8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs9_ref]  DEFAULT ('') FOR [prs9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs10ref]  DEFAULT ('') FOR [prs10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs11ref]  DEFAULT ('') FOR [prs11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs12ref]  DEFAULT ('') FOR [prs12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs13ref]  DEFAULT ('') FOR [prs13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs14ref]  DEFAULT ('') FOR [prs14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs15ref]  DEFAULT ('') FOR [prs15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs16ref]  DEFAULT ('') FOR [prs16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs17ref]  DEFAULT ('') FOR [prs17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs18ref]  DEFAULT ('') FOR [prs18ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs19ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs19ref]  DEFAULT ('') FOR [prs19ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs20ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs20ref]  DEFAULT ('') FOR [prs20ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs21ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs21ref]  DEFAULT ('') FOR [prs21ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs22ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs22ref]  DEFAULT ('') FOR [prs22ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs23ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs23ref]  DEFAULT ('') FOR [prs23ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs24ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs24ref]  DEFAULT ('') FOR [prs24ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs25ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs25ref]  DEFAULT ('') FOR [prs25ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs26ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs26ref]  DEFAULT ('') FOR [prs26ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs27ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs27ref]  DEFAULT ('') FOR [prs27ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs28ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs28ref]  DEFAULT ('') FOR [prs28ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs29ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs29ref]  DEFAULT ('') FOR [prs29ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs30ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs30ref]  DEFAULT ('') FOR [prs30ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs31ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs31ref]  DEFAULT ('') FOR [prs31ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs32ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs32ref]  DEFAULT ('') FOR [prs32ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs33ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs33ref]  DEFAULT ('') FOR [prs33ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs34ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs34ref]  DEFAULT ('') FOR [prs34ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs35ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs35ref]  DEFAULT ('') FOR [prs35ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs36ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs36ref]  DEFAULT ('') FOR [prs36ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs37ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs37ref]  DEFAULT ('') FOR [prs37ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs38ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs38ref]  DEFAULT ('') FOR [prs38ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_macgrp__prs39ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[macgrp__] ADD  CONSTRAINT [DF_macgrp__prs39ref]  DEFAULT ('') FOR [prs39ref]
END

