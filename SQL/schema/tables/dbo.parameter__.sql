SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parameter__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[parameter__](
	[name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[value] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [parameteri0] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_parameter__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[parameter__] ADD  CONSTRAINT [DF_parameter__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_parameter__value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[parameter__] ADD  CONSTRAINT [DF_parameter__value]  DEFAULT ('') FOR [value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_parameter__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[parameter__] ADD  CONSTRAINT [DF_parameter__type]  DEFAULT ('') FOR [type]
END

