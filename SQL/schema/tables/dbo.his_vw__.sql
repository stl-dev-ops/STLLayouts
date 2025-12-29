SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[his_vw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[his_vw__](
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwnr____] [int] NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wkzone__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[tijd_sta] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tijd_stp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opmer_fl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[gedrukt_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[endtst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[versienr] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[release_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[fix__num] [int] NOT NULL,
	[rcdend__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[ref_____] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[app_name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[programs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id0_hsvw] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_vw__]') AND name = N'id1_hsvw')
CREATE NONCLUSTERED INDEX [id1_hsvw] ON [dbo].[his_vw__]
(
	[vwnr____] ASC,
	[ref_____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_vw__]') AND name = N'id2_hsvw')
CREATE NONCLUSTERED INDEX [id2_hsvw] ON [dbo].[his_vw__]
(
	[jobnr___] ASC,
	[vwnr____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_vw__]') AND name = N'id3_hsvw')
CREATE NONCLUSTERED INDEX [id3_hsvw] ON [dbo].[his_vw__]
(
	[datum___] ASC,
	[tijd_stp] ASC,
	[jobnr___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__vwnr____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__vwnr____]  DEFAULT ((0)) FOR [vwnr____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__wkzone__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__wkzone__]  DEFAULT ('') FOR [wkzone__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__tijd_sta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__tijd_sta]  DEFAULT ('') FOR [tijd_sta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__tijd_stp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__tijd_stp]  DEFAULT ('') FOR [tijd_stp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__opmer_fl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__opmer_fl]  DEFAULT ('') FOR [opmer_fl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__gedrukt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__gedrukt_]  DEFAULT ('') FOR [gedrukt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__endtst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__endtst__]  DEFAULT ('') FOR [endtst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__versienr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__versienr]  DEFAULT ('') FOR [versienr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__release_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__release_]  DEFAULT ('') FOR [release_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__fix__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__fix__num]  DEFAULT ((0)) FOR [fix__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__rcdend__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__rcdend__]  DEFAULT ('') FOR [rcdend__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__ref_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__ref_____]  DEFAULT ('') FOR [ref_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__app_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__app_name]  DEFAULT ('') FOR [app_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_vw__programs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_vw__] ADD  CONSTRAINT [DF_his_vw__programs]  DEFAULT ('') FOR [programs]
END

