SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[krvtst__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[krvtst__](
	[vrz__tst] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_vtst] PRIMARY KEY CLUSTERED 
(
	[vrz__tst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_krvtst__vrz__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[krvtst__] ADD  CONSTRAINT [DF_krvtst__vrz__tst]  DEFAULT ('') FOR [vrz__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_krvtst__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[krvtst__] ADD  CONSTRAINT [DF_krvtst__omschr__]  DEFAULT ('') FOR [omschr__]
END

