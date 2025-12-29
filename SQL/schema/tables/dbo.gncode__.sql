SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gncode__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gncode__](
	[gn___ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[tax_code_ap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [gncodei1] PRIMARY KEY CLUSTERED 
(
	[gn___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gncode__gn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gncode__] ADD  CONSTRAINT [DF_gncode__gn___ref]  DEFAULT ('') FOR [gn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gncode__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gncode__] ADD  CONSTRAINT [DF_gncode__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gncode__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gncode__] ADD  CONSTRAINT [DF_gncode__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gncode__tax_code_ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gncode__] ADD  CONSTRAINT [DF_gncode__tax_code_ap]  DEFAULT ('') FOR [tax_code_ap]
END

