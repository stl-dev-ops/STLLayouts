SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordakp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordakp__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kost____] [float] NOT NULL,
	[kostt___] [float] NOT NULL,
	[kost__af] [float] NOT NULL,
	[kostt_af] [float] NOT NULL,
	[datum___] [date] NOT NULL,
	[tijdstip] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijze___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[doc__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ordakpi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordakp__]') AND name = N'ordakpi1')
CREATE NONCLUSTERED INDEX [ordakpi1] ON [dbo].[ordakp__]
(
	[ord__ref] ASC,
	[wijze___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordakp__]') AND name = N'ordakpi2')
CREATE NONCLUSTERED INDEX [ordakpi2] ON [dbo].[ordakp__]
(
	[type____] ASC,
	[det__ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__ord__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__ord__tst]  DEFAULT ('') FOR [ord__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__kost____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__kost____]  DEFAULT ((0)) FOR [kost____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__kostt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__kostt___]  DEFAULT ((0)) FOR [kostt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__kost__af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__kost__af]  DEFAULT ((0)) FOR [kost__af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__kostt_af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__kostt_af]  DEFAULT ((0)) FOR [kostt_af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__tijdstip]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__tijdstip]  DEFAULT ('') FOR [tijdstip]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__wijze___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__wijze___]  DEFAULT ('') FOR [wijze___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordakp__doc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordakp__] ADD  CONSTRAINT [DF_ordakp__doc__ref]  DEFAULT ('') FOR [doc__ref]
END

