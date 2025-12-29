SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bklas___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bklas___](
	[bklasref] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschrfr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_bkla] PRIMARY KEY CLUSTERED 
(
	[bklasref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bklas___bklasref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bklas___] ADD  CONSTRAINT [DF_bklas___bklasref]  DEFAULT ('') FOR [bklasref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bklas___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bklas___] ADD  CONSTRAINT [DF_bklas___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bklas___omschrfr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bklas___] ADD  CONSTRAINT [DF_bklas___omschrfr]  DEFAULT ('') FOR [omschrfr]
END

