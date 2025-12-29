SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[edipry__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[edipry__](
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__cat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_list] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [edipryi0] PRIMARY KEY CLUSTERED 
(
	[edi__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__edi__cat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__edi__cat]  DEFAULT ('') FOR [edi__cat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_list]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_list]  DEFAULT ('') FOR [pry_list]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_oms1]  DEFAULT ('') FOR [pry_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_oms2]  DEFAULT ('') FOR [pry_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_oms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_oms3]  DEFAULT ('') FOR [pry_oms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_oms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_oms4]  DEFAULT ('') FOR [pry_oms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_fil1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_fil1]  DEFAULT ('') FOR [pry_fil1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_fil2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_fil2]  DEFAULT ('') FOR [pry_fil2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_fil3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_fil3]  DEFAULT ('') FOR [pry_fil3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_edipry__pry_fil4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[edipry__] ADD  CONSTRAINT [DF_edipry__pry_fil4]  DEFAULT ('') FOR [pry_fil4]
END

