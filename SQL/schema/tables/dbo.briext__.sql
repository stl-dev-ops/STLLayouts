SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[briext__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[briext__](
	[bta__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt10] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt11] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt12] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt13] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt14] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt15] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt16] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt17] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt18] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt19] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt20] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt21] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt22] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt23] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt24] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt25] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt26] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt27] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt28] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt29] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt30] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [briexti0] PRIMARY KEY CLUSTERED 
(
	[bta__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__bta__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__bta__ref]  DEFAULT ('') FOR [bta__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrit6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrit6]  DEFAULT ('') FOR [brfcrit6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrit7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrit7]  DEFAULT ('') FOR [brfcrit7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrit8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrit8]  DEFAULT ('') FOR [brfcrit8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrit9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrit9]  DEFAULT ('') FOR [brfcrit9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt10]  DEFAULT ('') FOR [brfcrt10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt11]  DEFAULT ('') FOR [brfcrt11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt12]  DEFAULT ('') FOR [brfcrt12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt13]  DEFAULT ('') FOR [brfcrt13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt14]  DEFAULT ('') FOR [brfcrt14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt15]  DEFAULT ('') FOR [brfcrt15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt16]  DEFAULT ('') FOR [brfcrt16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt17]  DEFAULT ('') FOR [brfcrt17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt18]  DEFAULT ('') FOR [brfcrt18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt19]  DEFAULT ('') FOR [brfcrt19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt20]  DEFAULT ('') FOR [brfcrt20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt21]  DEFAULT ('') FOR [brfcrt21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt22]  DEFAULT ('') FOR [brfcrt22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt23]  DEFAULT ('') FOR [brfcrt23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt24]  DEFAULT ('') FOR [brfcrt24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt25]  DEFAULT ('') FOR [brfcrt25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt26]  DEFAULT ('') FOR [brfcrt26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt27]  DEFAULT ('') FOR [brfcrt27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt28]  DEFAULT ('') FOR [brfcrt28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt29]  DEFAULT ('') FOR [brfcrt29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_briext__brfcrt30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[briext__] ADD  CONSTRAINT [DF_briext__brfcrt30]  DEFAULT ('') FOR [brfcrt30]
END

