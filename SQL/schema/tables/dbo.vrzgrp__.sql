SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vrzgrp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vrzgrp__](
	[grp__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenlad__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vrzgrp_1] PRIMARY KEY CLUSTERED 
(
	[grp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__grp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__grp__ref]  DEFAULT ('') FOR [grp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vrzgrp__kenlad__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vrzgrp__] ADD  CONSTRAINT [DF_vrzgrp__kenlad__]  DEFAULT ('') FOR [kenlad__]
END

