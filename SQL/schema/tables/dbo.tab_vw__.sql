SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tab_vw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tab_vw__](
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwnr____] [int] NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wkzone__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[tijd_lim] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[date_avr] [date] NOT NULL,
	[time_avr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[selstr__] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[selstr_1] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[selstr_2] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[selstr_3] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[selek_fl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[opmer_fl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[priority] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_tbvw] PRIMARY KEY CLUSTERED 
(
	[jobnr___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tab_vw__]') AND name = N'id2_tbvw')
CREATE UNIQUE NONCLUSTERED INDEX [id2_tbvw] ON [dbo].[tab_vw__]
(
	[priority] ASC,
	[tijd_lim] ASC,
	[state___] ASC,
	[jobnr___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__vwnr____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__vwnr____]  DEFAULT ((0)) FOR [vwnr____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__wkzone__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__wkzone__]  DEFAULT ('') FOR [wkzone__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__tijd_lim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__tijd_lim]  DEFAULT ('') FOR [tijd_lim]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__date_avr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__date_avr]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [date_avr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__time_avr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__time_avr]  DEFAULT ('') FOR [time_avr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__selstr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__selstr__]  DEFAULT ('') FOR [selstr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__selstr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__selstr_1]  DEFAULT ('') FOR [selstr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__selstr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__selstr_2]  DEFAULT ('') FOR [selstr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__selstr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__selstr_3]  DEFAULT ('') FOR [selstr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__selek_fl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__selek_fl]  DEFAULT ('') FOR [selek_fl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__opmer_fl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__opmer_fl]  DEFAULT ('') FOR [opmer_fl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tab_vw__priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tab_vw__] ADD  CONSTRAINT [DF_tab_vw__priority]  DEFAULT ('') FOR [priority]
END

