SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opocat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[opocat__](
	[opo__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk02ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk03ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk04ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk05ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk06ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk07ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk08ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk09ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[impl_typ] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ggdr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[opk10ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk11ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk12ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk13ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk14ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk15ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk16ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk17ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opk18ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [opocat_1] PRIMARY KEY CLUSTERED 
(
	[opo__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opo__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opo__ref]  DEFAULT ('') FOR [opo__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opo__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opo__oms]  DEFAULT ('') FOR [opo__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opo__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opo__typ]  DEFAULT ('') FOR [opo__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk01ref]  DEFAULT ('') FOR [opk01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk02ref]  DEFAULT ('') FOR [opk02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk03ref]  DEFAULT ('') FOR [opk03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk04ref]  DEFAULT ('') FOR [opk04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk05ref]  DEFAULT ('') FOR [opk05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk06ref]  DEFAULT ('') FOR [opk06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk07ref]  DEFAULT ('') FOR [opk07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk08ref]  DEFAULT ('') FOR [opk08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk09ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk09ref]  DEFAULT ('') FOR [opk09ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__impl_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__impl_typ]  DEFAULT ('') FOR [impl_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__ggdr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__ggdr_ref]  DEFAULT ('') FOR [ggdr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk10ref]  DEFAULT ('') FOR [opk10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk11ref]  DEFAULT ('') FOR [opk11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk12ref]  DEFAULT ('') FOR [opk12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk13ref]  DEFAULT ('') FOR [opk13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk14ref]  DEFAULT ('') FOR [opk14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk15ref]  DEFAULT ('') FOR [opk15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk16ref]  DEFAULT ('') FOR [opk16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk17ref]  DEFAULT ('') FOR [opk17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_opocat__opk18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[opocat__] ADD  CONSTRAINT [DF_opocat__opk18ref]  DEFAULT ('') FOR [opk18ref]
END

