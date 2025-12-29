SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incentXt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incentXt](
	[incentXtID] [int] IDENTITY(1,1) NOT NULL,
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_incentXt] PRIMARY KEY CLUSTERED 
(
	[incentXtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentXt_tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentXt] ADD  CONSTRAINT [DF_incentXt_tst__ref]  DEFAULT ('0601') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentXt_tstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentXt] ADD  CONSTRAINT [DF_incentXt_tstd_ref]  DEFAULT ('') FOR [tstd_ref]
END

