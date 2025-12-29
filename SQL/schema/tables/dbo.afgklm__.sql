SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgklm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgklm__](
	[klm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klm__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klm__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[due__dat] [date] NOT NULL,
	[user____] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klmf_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgklmi0] PRIMARY KEY CLUSTERED 
(
	[klm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgklm__]') AND name = N'afgklmi1')
CREATE NONCLUSTERED INDEX [afgklmi1] ON [dbo].[afgklm__]
(
	[klm__rpn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgklm__]') AND name = N'afgklmi2')
CREATE NONCLUSTERED INDEX [afgklmi2] ON [dbo].[afgklm__]
(
	[klm__oms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgklm__]') AND name = N'afgklmi3')
CREATE NONCLUSTERED INDEX [afgklmi3] ON [dbo].[afgklm__]
(
	[klmf_oms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__klm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__klm__ref]  DEFAULT ('') FOR [klm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__klm__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__klm__rpn]  DEFAULT ('') FOR [klm__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__klm__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__klm__oms]  DEFAULT ('') FOR [klm__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__due__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__due__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [due__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__fiat____]  DEFAULT ('Y') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__klmf_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__klmf_oms]  DEFAULT ('') FOR [klmf_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgklm__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgklm__] ADD  CONSTRAINT [DF_afgklm__tstval05]  DEFAULT ('') FOR [tstval05]
END

