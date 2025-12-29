SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plcact__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plcact__](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[counter_] [int] NOT NULL,
	[tijdstip] [float] NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[teller__] [float] NOT NULL,
	[stilstnd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__inl] [date] NOT NULL,
	[uur__inl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodstat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dt___inl] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plcacti5] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcact__]') AND name = N'plcacti6')
CREATE NONCLUSTERED INDEX [plcacti6] ON [dbo].[plcact__]
(
	[wp___ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__counter_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__counter_]  DEFAULT ((0)) FOR [counter_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__tijdstip]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__tijdstip]  DEFAULT ((0)) FOR [tijdstip]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__teller__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__teller__]  DEFAULT ((0)) FOR [teller__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__stilstnd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__stilstnd]  DEFAULT ('') FOR [stilstnd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__dat__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__dat__inl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__uur__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__uur__inl]  DEFAULT ('') FOR [uur__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__prod_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__prod_typ]  DEFAULT ('') FOR [prod_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__prodstat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__prodstat]  DEFAULT ('') FOR [prodstat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcact__dt___inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcact__] ADD  CONSTRAINT [DF_plcact__dt___inl]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt___inl]
END

