SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpkl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpkl__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prsklref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[scr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__vrb] [float] NOT NULL,
	[inkmnvrb] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpkli1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prsklref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__prsklref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__prsklref]  DEFAULT ('') FOR [prsklref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__scr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__scr__ref]  DEFAULT ('') FOR [scr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__ink__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__ink__vrb]  DEFAULT ((0)) FOR [ink__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkl__inkmnvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkl__] ADD  CONSTRAINT [DF_drkpkl__inkmnvrb]  DEFAULT ((0)) FOR [inkmnvrb]
END

