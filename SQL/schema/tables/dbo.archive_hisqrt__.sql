SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[archive_hisqrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[archive_hisqrt__](
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_____] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt_old] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in___qrt_old] [float] NOT NULL,
	[komm_qrt_old] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt_new] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in___qrt_new] [float] NOT NULL,
	[komm_qrt_new] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[beweging] [int] NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [archive_hisqrti0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__soort___]  DEFAULT ('0') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__ref_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__ref_____]  DEFAULT ('') FOR [ref_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__uur_____]  DEFAULT ('  0:00') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__tst__qrt_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__tst__qrt_old]  DEFAULT ('1') FOR [tst__qrt_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__in___qrt_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__in___qrt_old]  DEFAULT ((0)) FOR [in___qrt_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__komm_qrt_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__komm_qrt_old]  DEFAULT ('') FOR [komm_qrt_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__tst__qrt_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__tst__qrt_new]  DEFAULT ('1') FOR [tst__qrt_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__in___qrt_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__in___qrt_new]  DEFAULT ((0)) FOR [in___qrt_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__komm_qrt_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__komm_qrt_new]  DEFAULT ('') FOR [komm_qrt_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__beweging]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__beweging]  DEFAULT ((0)) FOR [beweging]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisqrt__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisqrt__] ADD  CONSTRAINT [DF_archive_hisqrt__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

