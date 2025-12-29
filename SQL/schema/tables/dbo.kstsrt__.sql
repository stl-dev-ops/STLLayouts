SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kstsrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kstsrt__](
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_ksrt] PRIMARY KEY CLUSTERED 
(
	[ksrt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstsrt__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstsrt__] ADD  CONSTRAINT [DF_kstsrt__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstsrt__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstsrt__] ADD  CONSTRAINT [DF_kstsrt__omschr__]  DEFAULT ('') FOR [omschr__]
END

