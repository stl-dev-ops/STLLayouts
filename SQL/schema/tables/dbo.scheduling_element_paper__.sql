SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_element_paper__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_element_paper__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[element_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[product_id] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brand] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[order_status] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[delivery_date] [datetime2](3) NOT NULL,
	[dimension_x] [float] NOT NULL,
	[dimension_y] [float] NOT NULL,
	[thickness] [float] NOT NULL,
	[weight] [float] NOT NULL,
	[grade] [int] NOT NULL,
	[grain_direction] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_element_paperi0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__element_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__element_id]  DEFAULT ('') FOR [element_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__product_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__product_id]  DEFAULT ('') FOR [product_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__brand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__brand]  DEFAULT ('') FOR [brand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__order_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__order_status]  DEFAULT ('') FOR [order_status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__delivery_date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__delivery_date]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [delivery_date]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__dimension_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__dimension_x]  DEFAULT ((0)) FOR [dimension_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__dimension_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__dimension_y]  DEFAULT ((0)) FOR [dimension_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__thickness]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__thickness]  DEFAULT ((0)) FOR [thickness]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__weight]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__weight]  DEFAULT ((0)) FOR [weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__grade]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__grade]  DEFAULT ((0)) FOR [grade]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element_paper__grain_direction]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element_paper__] ADD  CONSTRAINT [DF_scheduling_element_paper__grain_direction]  DEFAULT ('') FOR [grain_direction]
END

