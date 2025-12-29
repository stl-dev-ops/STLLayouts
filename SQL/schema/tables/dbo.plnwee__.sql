SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plnwee__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plnwee__](
	[plwe_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[capacite] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___ma] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___di] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___wo] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___do] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___vr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___za] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___zo] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_ma] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_di] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_wo] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_do] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_vr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_za] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_zo] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_plwe] PRIMARY KEY CLUSTERED 
(
	[plwe_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__plwe_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__plwe_ref]  DEFAULT ('') FOR [plwe_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__capacite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__capacite]  DEFAULT ('') FOR [capacite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___ma]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___ma]  DEFAULT ('') FOR [dag___ma]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___di]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___di]  DEFAULT ('') FOR [dag___di]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___wo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___wo]  DEFAULT ('') FOR [dag___wo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___do]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___do]  DEFAULT ('') FOR [dag___do]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___vr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___vr]  DEFAULT ('') FOR [dag___vr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___za]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___za]  DEFAULT ('') FOR [dag___za]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__dag___zo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__dag___zo]  DEFAULT ('') FOR [dag___zo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_ma]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_ma]  DEFAULT ('') FOR [start_ma]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_di]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_di]  DEFAULT ('') FOR [start_di]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_wo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_wo]  DEFAULT ('') FOR [start_wo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_do]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_do]  DEFAULT ('') FOR [start_do]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_vr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_vr]  DEFAULT ('') FOR [start_vr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_za]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_za]  DEFAULT ('') FOR [start_za]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnwee__start_zo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnwee__] ADD  CONSTRAINT [DF_plnwee__start_zo]  DEFAULT ('') FOR [start_zo]
END

