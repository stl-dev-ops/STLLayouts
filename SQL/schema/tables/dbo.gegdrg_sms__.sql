SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gegdrg_sms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gegdrg_sms__](
	[ggdr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ggdr_ref_child] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[linkvrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gegdrg_smsi0] PRIMARY KEY CLUSTERED 
(
	[ggdr_ref] ASC,
	[ggdr_ref_child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg_sms__ggdr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg_sms__] ADD  CONSTRAINT [DF_gegdrg_sms__ggdr_ref]  DEFAULT ('') FOR [ggdr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg_sms__ggdr_ref_child]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg_sms__] ADD  CONSTRAINT [DF_gegdrg_sms__ggdr_ref_child]  DEFAULT ('') FOR [ggdr_ref_child]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg_sms__linkvrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg_sms__] ADD  CONSTRAINT [DF_gegdrg_sms__linkvrpl]  DEFAULT ('') FOR [linkvrpl]
END

