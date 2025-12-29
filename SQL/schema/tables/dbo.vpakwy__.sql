SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vpakwy__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vpakwy__](
	[vpk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpk__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[deelbaar] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh_gew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1int] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh1__9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksku_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2int] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh2__9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksku_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3int] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh3__9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksku_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4int] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh4__9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksku_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5int] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenh5__9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksku_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssvgsl9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vpakwyi1] PRIMARY KEY CLUSTERED 
(
	[vpk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpk__ref]  DEFAULT ('') FOR [vpk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpk__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpk__oms]  DEFAULT ('') FOR [vpk__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__deelbaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__deelbaar]  DEFAULT ('') FOR [deelbaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh_gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh_gew]  DEFAULT ('') FOR [eenh_gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1int]  DEFAULT ('') FOR [eenh1int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__1]  DEFAULT ('') FOR [eenh1__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__2]  DEFAULT ('') FOR [eenh1__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__3]  DEFAULT ('') FOR [eenh1__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__4]  DEFAULT ('') FOR [eenh1__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__5]  DEFAULT ('') FOR [eenh1__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__6]  DEFAULT ('') FOR [eenh1__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__7]  DEFAULT ('') FOR [eenh1__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__8]  DEFAULT ('') FOR [eenh1__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh1__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh1__9]  DEFAULT ('') FOR [eenh1__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksrt_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksrt_1]  DEFAULT ('') FOR [vpksrt_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksku_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksku_1]  DEFAULT ('') FOR [vpksku_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2int]  DEFAULT ('') FOR [eenh2int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__1]  DEFAULT ('') FOR [eenh2__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__2]  DEFAULT ('') FOR [eenh2__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__3]  DEFAULT ('') FOR [eenh2__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__4]  DEFAULT ('') FOR [eenh2__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__5]  DEFAULT ('') FOR [eenh2__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__6]  DEFAULT ('') FOR [eenh2__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__7]  DEFAULT ('') FOR [eenh2__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__8]  DEFAULT ('') FOR [eenh2__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh2__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh2__9]  DEFAULT ('') FOR [eenh2__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksrt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksrt_2]  DEFAULT ('') FOR [vpksrt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksku_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksku_2]  DEFAULT ('') FOR [vpksku_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3int]  DEFAULT ('') FOR [eenh3int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__1]  DEFAULT ('') FOR [eenh3__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__2]  DEFAULT ('') FOR [eenh3__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__3]  DEFAULT ('') FOR [eenh3__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__4]  DEFAULT ('') FOR [eenh3__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__5]  DEFAULT ('') FOR [eenh3__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__6]  DEFAULT ('') FOR [eenh3__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__7]  DEFAULT ('') FOR [eenh3__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__8]  DEFAULT ('') FOR [eenh3__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh3__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh3__9]  DEFAULT ('') FOR [eenh3__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksrt_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksrt_3]  DEFAULT ('') FOR [vpksrt_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksku_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksku_3]  DEFAULT ('') FOR [vpksku_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4int]  DEFAULT ('') FOR [eenh4int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__1]  DEFAULT ('') FOR [eenh4__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__2]  DEFAULT ('') FOR [eenh4__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__3]  DEFAULT ('') FOR [eenh4__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__4]  DEFAULT ('') FOR [eenh4__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__5]  DEFAULT ('') FOR [eenh4__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__6]  DEFAULT ('') FOR [eenh4__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__7]  DEFAULT ('') FOR [eenh4__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__8]  DEFAULT ('') FOR [eenh4__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh4__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh4__9]  DEFAULT ('') FOR [eenh4__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksrt_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksrt_4]  DEFAULT ('') FOR [vpksrt_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksku_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksku_4]  DEFAULT ('') FOR [vpksku_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5int]  DEFAULT ('') FOR [eenh5int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__1]  DEFAULT ('') FOR [eenh5__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__2]  DEFAULT ('') FOR [eenh5__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__3]  DEFAULT ('') FOR [eenh5__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__4]  DEFAULT ('') FOR [eenh5__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__5]  DEFAULT ('') FOR [eenh5__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__6]  DEFAULT ('') FOR [eenh5__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__7]  DEFAULT ('') FOR [eenh5__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__8]  DEFAULT ('') FOR [eenh5__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__eenh5__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__eenh5__9]  DEFAULT ('') FOR [eenh5__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksrt_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksrt_5]  DEFAULT ('') FOR [vpksrt_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__vpksku_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__vpksku_5]  DEFAULT ('') FOR [vpksku_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl1]  DEFAULT ('') FOR [tssvgsl1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl2]  DEFAULT ('') FOR [tssvgsl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl3]  DEFAULT ('') FOR [tssvgsl3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl4]  DEFAULT ('') FOR [tssvgsl4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl5]  DEFAULT ('') FOR [tssvgsl5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl6]  DEFAULT ('') FOR [tssvgsl6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl7]  DEFAULT ('') FOR [tssvgsl7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl8]  DEFAULT ('') FOR [tssvgsl8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakwy__tssvgsl9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakwy__] ADD  CONSTRAINT [DF_vpakwy__tssvgsl9]  DEFAULT ('') FOR [tssvgsl9]
END

