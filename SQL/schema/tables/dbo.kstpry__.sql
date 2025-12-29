SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kstpry__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kstpry__](
	[kstp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__srt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst___01] [float] NOT NULL,
	[kst___02] [float] NOT NULL,
	[kst___03] [float] NOT NULL,
	[kst___04] [float] NOT NULL,
	[kst___05] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kstpryi1] PRIMARY KEY CLUSTERED 
(
	[kstp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[kstpry__]') AND name = N'kstpryi2')
CREATE NONCLUSTERED INDEX [kstpryi2] ON [dbo].[kstpry__]
(
	[kstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kstp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kstp_ref]  DEFAULT ('') FOR [kstp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kstd_ref]  DEFAULT ('') FOR [kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst__srt]  DEFAULT ('') FOR [kst__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst___01]  DEFAULT ((0)) FOR [kst___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst___02]  DEFAULT ((0)) FOR [kst___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst___03]  DEFAULT ((0)) FOR [kst___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst___04]  DEFAULT ((0)) FOR [kst___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kstpry__kst___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kstpry__] ADD  CONSTRAINT [DF_kstpry__kst___05]  DEFAULT ((0)) FOR [kst___05]
END

