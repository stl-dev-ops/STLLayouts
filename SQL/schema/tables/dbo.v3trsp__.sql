SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3trsp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3trsp__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i3_trsp1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[trsp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__trsp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__trsp_ref]  DEFAULT ('') FOR [trsp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3trsp__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3trsp__] ADD  CONSTRAINT [DF_v3trsp__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

