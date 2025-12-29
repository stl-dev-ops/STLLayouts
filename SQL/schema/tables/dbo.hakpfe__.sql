SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hakpfe__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hakpfe__](
	[akp__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[redo_tlr] [int] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi_timestamp] [datetime2](3) NOT NULL,
	[edi__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnredi] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[resp_key] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[resp_txt] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hakpfei0] PRIMARY KEY CLUSTERED 
(
	[akp__ref] ASC,
	[edi__ref] ASC,
	[redo_tlr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hakpfe__]') AND name = N'hakpfei1')
CREATE NONCLUSTERED INDEX [hakpfei1] ON [dbo].[hakpfe__]
(
	[resp_key] ASC,
	[akp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__akp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__akp__ref]  DEFAULT ('') FOR [akp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__redo_tlr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__redo_tlr]  DEFAULT ((0)) FOR [redo_tlr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__edi_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__edi_timestamp]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [edi_timestamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__edi__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__edi__tst]  DEFAULT ('') FOR [edi__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__resp_key]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__resp_key]  DEFAULT ('') FOR [resp_key]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfe__resp_txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfe__] ADD  CONSTRAINT [DF_hakpfe__resp_txt]  DEFAULT ('') FOR [resp_txt]
END

