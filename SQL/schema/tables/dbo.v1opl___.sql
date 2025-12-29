SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1opl___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1opl___](
	[opl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[offq_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl__van] [int] NOT NULL,
	[opl__tot] [int] NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1opl_i0] PRIMARY KEY CLUSTERED 
(
	[opl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___opl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___opl__ref]  DEFAULT ('') FOR [opl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___offq_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___offq_ref]  DEFAULT ('') FOR [offq_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___opl__van]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___opl__van]  DEFAULT ((0)) FOR [opl__van]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___opl__tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___opl__tot]  DEFAULT ((0)) FOR [opl__tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1opl___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1opl___] ADD  CONSTRAINT [DF_v1opl___off__ref]  DEFAULT ('') FOR [off__ref]
END

