SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hischl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hischl__](
	[prdlnref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn2__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg02ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg03ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg04ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg05ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg06ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg07ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg08ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg09ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg10ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hischli0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hischl__]') AND name = N'hischli1')
CREATE NONCLUSTERED INDEX [hischli1] ON [dbo].[hischl__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__prdlnref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__prdlnref]  DEFAULT ('') FOR [prdlnref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__wn2__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__wn2__ref]  DEFAULT ('') FOR [wn2__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg01ref]  DEFAULT ('') FOR [vrg01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg02ref]  DEFAULT ('') FOR [vrg02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg03ref]  DEFAULT ('') FOR [vrg03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg04ref]  DEFAULT ('') FOR [vrg04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg05ref]  DEFAULT ('') FOR [vrg05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg06ref]  DEFAULT ('') FOR [vrg06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg07ref]  DEFAULT ('') FOR [vrg07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg08ref]  DEFAULT ('') FOR [vrg08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg09ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg09ref]  DEFAULT ('') FOR [vrg09ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hischl__vrg10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hischl__] ADD  CONSTRAINT [DF_hischl__vrg10ref]  DEFAULT ('') FOR [vrg10ref]
END

