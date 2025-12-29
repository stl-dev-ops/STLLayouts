SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgvdt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgvdt__](
	[vdt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdt__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdt__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdth_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgvdti1] PRIMARY KEY CLUSTERED 
(
	[vdt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__vdt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__vdt__ref]  DEFAULT ('') FOR [vdt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__vdt__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__vdt__srt]  DEFAULT ('1') FOR [vdt__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__vdt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__vdt__oms]  DEFAULT ('') FOR [vdt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__vdth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__vdth_ref]  DEFAULT ('') FOR [vdth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvdt__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvdt__] ADD  CONSTRAINT [DF_afgvdt__taal___9]  DEFAULT ('') FOR [taal___9]
END

