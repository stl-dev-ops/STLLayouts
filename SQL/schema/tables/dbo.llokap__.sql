SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[llokap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[llokap__](
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdelokap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [llokapi0] PRIMARY KEY CLUSTERED 
(
	[lok__ref] ASC,
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_llokap__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[llokap__] ADD  CONSTRAINT [DF_llokap__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_llokap__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[llokap__] ADD  CONSTRAINT [DF_llokap__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_llokap__cdelokap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[llokap__] ADD  CONSTRAINT [DF_llokap__cdelokap]  DEFAULT ('') FOR [cdelokap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_llokap__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[llokap__] ADD  CONSTRAINT [DF_llokap__soort___]  DEFAULT ('0') FOR [soort___]
END

