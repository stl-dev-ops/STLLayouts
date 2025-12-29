SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klasvk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klasvk__](
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_oms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klasvki0] PRIMARY KEY CLUSTERED 
(
	[klas_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klasvk__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klasvk__] ADD  CONSTRAINT [DF_klasvk__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klasvk__klas_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klasvk__] ADD  CONSTRAINT [DF_klasvk__klas_oms]  DEFAULT ('') FOR [klas_oms]
END

