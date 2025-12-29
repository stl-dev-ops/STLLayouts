SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4ostf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4ostf__](
	[ostf_ref] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[proc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[bedrag__] [float] NOT NULL,
	[bedrag_s] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4ostfi0] PRIMARY KEY CLUSTERED 
(
	[ostf_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4ostf__]') AND name = N'v4ostfi1')
CREATE NONCLUSTERED INDEX [v4ostfi1] ON [dbo].[v4ostf__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__ostf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__ostf_ref]  DEFAULT ('') FOR [ostf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__proc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__proc_ref]  DEFAULT ('') FOR [proc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4ostf__bedrag_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4ostf__] ADD  CONSTRAINT [DF_v4ostf__bedrag_s]  DEFAULT ((0)) FOR [bedrag_s]
END

