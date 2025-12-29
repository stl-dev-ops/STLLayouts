SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3tar_definition__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3tar_definition__](
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tar_def_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[beg__dat] [date] NOT NULL,
	[end__dat] [date] NOT NULL,
	[fixed_end__dat] [bit] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koersvkp] [float] NOT NULL,
	[fixed_vm] [bit] NOT NULL,
	[mx___opl] [float] NOT NULL,
	[comment] [varchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[orig_tar_def_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[orig_end__dat] [date] NOT NULL,
	[orig_off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3tar_definitioni0] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC,
	[tar_def_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__tar_def_ref]  DEFAULT ('') FOR [tar_def_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__beg__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__beg__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [beg__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__end__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__fixed_end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__fixed_end__dat]  DEFAULT ((0)) FOR [fixed_end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__koersvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__koersvkp]  DEFAULT ((0)) FOR [koersvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__fixed_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__fixed_vm]  DEFAULT ((0)) FOR [fixed_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__mx___opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__mx___opl]  DEFAULT ((0)) FOR [mx___opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__orig_tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__orig_tar_def_ref]  DEFAULT ('') FOR [orig_tar_def_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__orig_end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__orig_end__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [orig_end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__orig_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__orig_off__ref]  DEFAULT ('') FOR [orig_off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__crea_jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__crea_jobnr_vw]  DEFAULT ('') FOR [crea_jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__last_edit_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar_definition__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar_definition__] ADD  CONSTRAINT [DF_v3tar_definition__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

