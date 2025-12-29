SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[catkal__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[catkal__](
	[kal__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kal__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [catkali0] PRIMARY KEY CLUSTERED 
(
	[kal__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_catkal__kal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[catkal__] ADD  CONSTRAINT [DF_catkal__kal__ref]  DEFAULT ('') FOR [kal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_catkal__kal__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[catkal__] ADD  CONSTRAINT [DF_catkal__kal__oms]  DEFAULT ('') FOR [kal__oms]
END

