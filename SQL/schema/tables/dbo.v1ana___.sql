SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1ana___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1ana___](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kost___b] [float] NOT NULL,
	[kost___s] [float] NOT NULL,
	[vkp____b] [float] NOT NULL,
	[vkp____s] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i1_ana_1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[rbk__ref] ASC,
	[wp___ref] ASC,
	[arek_ref] ASC,
	[ksrt_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___kost___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___kost___b]  DEFAULT ((0)) FOR [kost___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___kost___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___kost___s]  DEFAULT ((0)) FOR [kost___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___vkp____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___vkp____b]  DEFAULT ((0)) FOR [vkp____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1ana___vkp____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1ana___] ADD  CONSTRAINT [DF_v1ana___vkp____s]  DEFAULT ((0)) FOR [vkp____s]
END

