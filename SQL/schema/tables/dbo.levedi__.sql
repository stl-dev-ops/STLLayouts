SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levedi__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levedi__](
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[senderid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid3] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid4] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sendrid5] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [levedii0] PRIMARY KEY CLUSTERED 
(
	[lev__ref] ASC,
	[edi__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__senderid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__senderid]  DEFAULT ('') FOR [senderid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__sendrid2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__sendrid2]  DEFAULT ('') FOR [sendrid2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__sendrid3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__sendrid3]  DEFAULT ('') FOR [sendrid3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__sendrid4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__sendrid4]  DEFAULT ('') FOR [sendrid4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levedi__sendrid5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levedi__] ADD  CONSTRAINT [DF_levedi__sendrid5]  DEFAULT ('') FOR [sendrid5]
END

