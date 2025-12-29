SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autbv5__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autbv5__](
	[aut_akd1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_akd1] [int] NOT NULL,
	[aut_grbi] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_grbi] [int] NOT NULL,
	[aut_anbi] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_anbi] [int] NOT NULL,
	[aut_vkd1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vkd1] [int] NOT NULL,
	[aut_d441] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_d441] [int] NOT NULL,
	[aut_d442] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_d442] [int] NOT NULL,
	[aut_d443] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_d443] [int] NOT NULL,
	[aut_d444] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_d444] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autbv5i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_akd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_akd1]  DEFAULT ('') FOR [aut_akd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_akd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_akd1]  DEFAULT ((0)) FOR [vlg_akd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_grbi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_grbi]  DEFAULT ('') FOR [aut_grbi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_grbi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_grbi]  DEFAULT ((0)) FOR [vlg_grbi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_anbi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_anbi]  DEFAULT ('') FOR [aut_anbi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_anbi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_anbi]  DEFAULT ((0)) FOR [vlg_anbi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_vkd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_vkd1]  DEFAULT ('') FOR [aut_vkd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_vkd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_vkd1]  DEFAULT ((0)) FOR [vlg_vkd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_d441]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_d441]  DEFAULT ('') FOR [aut_d441]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_d441]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_d441]  DEFAULT ((0)) FOR [vlg_d441]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_d442]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_d442]  DEFAULT ('') FOR [aut_d442]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_d442]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_d442]  DEFAULT ((0)) FOR [vlg_d442]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_d443]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_d443]  DEFAULT ('') FOR [aut_d443]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_d443]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_d443]  DEFAULT ((0)) FOR [vlg_d443]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__aut_d444]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__aut_d444]  DEFAULT ('') FOR [aut_d444]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autbv5__vlg_d444]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autbv5__] ADD  CONSTRAINT [DF_autbv5__vlg_d444]  DEFAULT ((0)) FOR [vlg_d444]
END

