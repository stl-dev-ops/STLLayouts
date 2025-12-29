SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rbk_vk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rbk_vk__](
	[rbk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__vrz] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__oms] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [rbk_vki0] PRIMARY KEY CLUSTERED 
(
	[rbk__typ] ASC,
	[rbk__srt] ASC,
	[rbk__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbk__typ]  DEFAULT ('') FOR [rbk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbk__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbk__srt]  DEFAULT ('') FOR [rbk__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbk__vrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbk__vrz]  DEFAULT ('') FOR [rbk__vrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbk__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbk__oms]  DEFAULT ('') FOR [rbk__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rbk_vk__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rbk_vk__] ADD  CONSTRAINT [DF_rbk_vk__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

