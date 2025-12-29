SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pryplt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pryplt__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__std] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt0__vm] [float] NOT NULL,
	[plt1__vm] [float] NOT NULL,
	[plt2__vm] [float] NOT NULL,
	[plt3__vm] [float] NOT NULL,
	[plt4__vm] [float] NOT NULL,
	[plt5__vm] [float] NOT NULL,
	[plt6__vm] [float] NOT NULL,
	[plt7__vm] [float] NOT NULL,
	[fpl0_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl6_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl7_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pryplti0] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt__vkp]  DEFAULT ('') FOR [plt__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt__std]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt__std]  DEFAULT ('') FOR [plt__std]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt0__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt0__vm]  DEFAULT ((0)) FOR [plt0__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt1__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt1__vm]  DEFAULT ((0)) FOR [plt1__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt2__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt2__vm]  DEFAULT ((0)) FOR [plt2__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt3__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt3__vm]  DEFAULT ((0)) FOR [plt3__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt4__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt4__vm]  DEFAULT ((0)) FOR [plt4__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt5__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt5__vm]  DEFAULT ((0)) FOR [plt5__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt6__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt6__vm]  DEFAULT ((0)) FOR [plt6__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__plt7__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__plt7__vm]  DEFAULT ((0)) FOR [plt7__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl0_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl0_ref]  DEFAULT ('') FOR [fpl0_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl1_ref]  DEFAULT ('') FOR [fpl1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl2_ref]  DEFAULT ('') FOR [fpl2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl3_ref]  DEFAULT ('') FOR [fpl3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl4_ref]  DEFAULT ('') FOR [fpl4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl5_ref]  DEFAULT ('') FOR [fpl5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl6_ref]  DEFAULT ('') FOR [fpl6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryplt__fpl7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryplt__] ADD  CONSTRAINT [DF_pryplt__fpl7_ref]  DEFAULT ('') FOR [fpl7_ref]
END

