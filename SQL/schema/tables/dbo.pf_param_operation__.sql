SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_operation__](
	[operation_id] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[removed] [bit] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[origin] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[operation_class_id] [int] NOT NULL,
	[lettertext_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[lettertext_9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[selector] [bit] NOT NULL,
	[production_type] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_operationi0] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__removed]  DEFAULT ((0)) FOR [removed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__origin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__origin]  DEFAULT ('Generic') FOR [origin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__operation_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__operation_class_id]  DEFAULT ((0)) FOR [operation_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_1]  DEFAULT ('') FOR [lettertext_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_2]  DEFAULT ('') FOR [lettertext_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_3]  DEFAULT ('') FOR [lettertext_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_4]  DEFAULT ('') FOR [lettertext_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_5]  DEFAULT ('') FOR [lettertext_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_6]  DEFAULT ('') FOR [lettertext_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_7]  DEFAULT ('') FOR [lettertext_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_8]  DEFAULT ('') FOR [lettertext_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__lettertext_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__lettertext_9]  DEFAULT ('') FOR [lettertext_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__selector]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__selector]  DEFAULT ((1)) FOR [selector]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation__production_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation__] ADD  CONSTRAINT [DF_pf_param_operation__production_type]  DEFAULT ('') FOR [production_type]
END

