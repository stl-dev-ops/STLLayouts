SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgcmd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgcmd__](
	[cmb__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgcmdi0] PRIMARY KEY CLUSTERED 
(
	[cmb__ref] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgcmd__]') AND name = N'afgcmdi1')
CREATE NONCLUSTERED INDEX [afgcmdi1] ON [dbo].[afgcmd__]
(
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmd__cmb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmd__] ADD  CONSTRAINT [DF_afgcmd__cmb__ref]  DEFAULT ('') FOR [cmb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmd__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmd__] ADD  CONSTRAINT [DF_afgcmd__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmd__dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmd__] ADD  CONSTRAINT [DF_afgcmd__dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmd__dg___typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmd__] ADD  CONSTRAINT [DF_afgcmd__dg___typ]  DEFAULT ('') FOR [dg___typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmd__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmd__] ADD  CONSTRAINT [DF_afgcmd__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

