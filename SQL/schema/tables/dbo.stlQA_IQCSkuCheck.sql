SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQA_IQCSkuCheck]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQA_IQCSkuCheck](
	[grs__vnr] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[is_checked] [bit] NOT NULL,
	[last_updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[grs__vnr] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlQA_IQC__last___62AA7445]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_IQCSkuCheck] ADD  DEFAULT (getdate()) FOR [last_updated]
END

