SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Rpt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Rpt](
	[stlMRS_RptID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tedrkdto] [float] NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pass] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMRS_Rpt] PRIMARY KEY CLUSTERED 
(
	[stlMRS_RptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_tedrkdto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_tedrkdto]  DEFAULT ((0)) FOR [tedrkdto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_vpak_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_vpak_oms]  DEFAULT ('') FOR [vpak_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Rpt_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Rpt] ADD  CONSTRAINT [DF_stlMRS_Rpt_pass]  DEFAULT ('') FOR [pass]
END

