SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prodfm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prodfm__](
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfm_rpn] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfm_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prodfmi0] PRIMARY KEY CLUSTERED 
(
	[prfm_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodfm__prfm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodfm__] ADD  CONSTRAINT [DF_prodfm__prfm_ref]  DEFAULT ('') FOR [prfm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodfm__prfm_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodfm__] ADD  CONSTRAINT [DF_prodfm__prfm_rpn]  DEFAULT ('') FOR [prfm_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodfm__prfm_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodfm__] ADD  CONSTRAINT [DF_prodfm__prfm_oms]  DEFAULT ('') FOR [prfm_oms]
END

