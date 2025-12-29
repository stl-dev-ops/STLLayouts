SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_sms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp_sms__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref_child] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [arthlp_smsi0] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC,
	[arth_ref_child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_sms__]') AND name = N'arthlp_smsi1')
CREATE NONCLUSTERED INDEX [arthlp_smsi1] ON [dbo].[arthlp_sms__]
(
	[arth_ref_child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_sms__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_sms__] ADD  CONSTRAINT [DF_arthlp_sms__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_sms__arth_ref_child]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_sms__] ADD  CONSTRAINT [DF_arthlp_sms__arth_ref_child]  DEFAULT ('') FOR [arth_ref_child]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_sms__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_sms__] ADD  CONSTRAINT [DF_arthlp_sms__aantal__]  DEFAULT ((1)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_sms__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_sms__] ADD  CONSTRAINT [DF_arthlp_sms__creation_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_sms__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_sms__] ADD  CONSTRAINT [DF_arthlp_sms__user____]  DEFAULT ('') FOR [user____]
END

