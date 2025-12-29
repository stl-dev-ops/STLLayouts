SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgkst__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgkst__](
	[afgvkref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overhead] [float] NOT NULL,
	[papier__] [float] NOT NULL,
	[grdvrb__] [float] NOT NULL,
	[ondaan__] [float] NOT NULL,
	[vkp_kost] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgksti0] PRIMARY KEY CLUSTERED 
(
	[afgvkref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__afgvkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__afgvkref]  DEFAULT ('') FOR [afgvkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__overhead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__overhead]  DEFAULT ((0)) FOR [overhead]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__papier__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__papier__]  DEFAULT ((0)) FOR [papier__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__grdvrb__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__grdvrb__]  DEFAULT ((0)) FOR [grdvrb__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__vkp_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__vkp_kost]  DEFAULT ((0)) FOR [vkp_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgkst__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgkst__] ADD  CONSTRAINT [DF_afgkst__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

