SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd_detail__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hlfvrd_detail__](
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[resource_id] [int] NOT NULL,
	[resource_instance_id] [int] NOT NULL,
	[aant__in] [float] NOT NULL,
	[datumuit] [date] NOT NULL,
	[uur__uit] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___uit] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___uit] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_uit] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hlfvrd_detaili0] PRIMARY KEY CLUSTERED 
(
	[hlf__ref] ASC,
	[resource_id] ASC,
	[resource_instance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__resource_instance_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__resource_instance_id]  DEFAULT ((0)) FOR [resource_instance_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__aant__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__aant__in]  DEFAULT ((0)) FOR [aant__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__datumuit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__datumuit]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datumuit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__uur__uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__uur__uit]  DEFAULT ('') FOR [uur__uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__wp___uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__wp___uit]  DEFAULT ('') FOR [wp___uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__wn___uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__wn___uit]  DEFAULT ('') FOR [wn___uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd_detail__aant_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd_detail__] ADD  CONSTRAINT [DF_hlfvrd_detail__aant_uit]  DEFAULT ((0)) FOR [aant_uit]
END

