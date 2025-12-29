SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plnmdd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plnmdd__](
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmdd_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[priorite] [int] NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_pmdd] PRIMARY KEY CLUSTERED 
(
	[pmd__ref] ASC,
	[pmdd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__pmdd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__pmdd_ref]  DEFAULT ('') FOR [pmdd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__priorite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__priorite]  DEFAULT ((0)) FOR [priorite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__duur____]  DEFAULT ('') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__pln_tm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__pln_tm__]  DEFAULT ('') FOR [pln_tm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__pln_dt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__pln_dt__]  DEFAULT ('') FOR [pln_dt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmdd__pln_dd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmdd__] ADD  CONSTRAINT [DF_plnmdd__pln_dd__]  DEFAULT ((0)) FOR [pln_dd__]
END

