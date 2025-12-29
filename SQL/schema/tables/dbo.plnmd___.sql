SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plnmd___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plnmd___](
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_pmd_] PRIMARY KEY CLUSTERED 
(
	[pmd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmd___pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmd___] ADD  CONSTRAINT [DF_plnmd___pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnmd___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnmd___] ADD  CONSTRAINT [DF_plnmd___omschr__]  DEFAULT ('') FOR [omschr__]
END

