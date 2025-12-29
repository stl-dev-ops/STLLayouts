SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[extfkw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[extfkw__](
	[efak_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar____] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kwartaal] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__bm] [float] NOT NULL,
	[code_mkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrintr] [float] NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [efak_id1] PRIMARY KEY CLUSTERED 
(
	[efak_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__efak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__efak_ref]  DEFAULT ('') FOR [efak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__kwartaal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__kwartaal]  DEFAULT ('') FOR [kwartaal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__code_mkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__code_mkl]  DEFAULT ('') FOR [code_mkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__bedrintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__bedrintr]  DEFAULT ((0)) FOR [bedrintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_extfkw__aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[extfkw__] ADD  CONSTRAINT [DF_extfkw__aang_fir]  DEFAULT ('') FOR [aang_fir]
END

