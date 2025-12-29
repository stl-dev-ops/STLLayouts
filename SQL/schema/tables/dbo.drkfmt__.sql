SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkfmt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkfmt__](
	[fmt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[fmt_open] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_gesl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_comm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkfmti1] PRIMARY KEY CLUSTERED 
(
	[fmt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmt__ref]  DEFAULT ('') FOR [fmt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmt__rpn]  DEFAULT ('') FOR [fmt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmt_open]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmt_open]  DEFAULT ('') FOR [fmt_open]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmt_gesl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmt_gesl]  DEFAULT ('') FOR [fmt_gesl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkfmt__fmt_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkfmt__] ADD  CONSTRAINT [DF_drkfmt__fmt_comm]  DEFAULT ('') FOR [fmt_comm]
END

