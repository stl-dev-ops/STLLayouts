SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verte___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[verte___](
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__rpn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gsm_____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[funktie_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw_] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[email___] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[assist__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[enkelopv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mapstart] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ref__vrt] PRIMARY KEY CLUSTERED 
(
	[vrt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[verte___]') AND name = N'rpn__vrt')
CREATE UNIQUE NONCLUSTERED INDEX [rpn__vrt] ON [dbo].[verte___]
(
	[vrt__rpn] ASC,
	[vrt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___vrt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___vrt__rpn]  DEFAULT ('') FOR [vrt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___gsm_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___gsm_____]  DEFAULT ('') FOR [gsm_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___funktie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___funktie_]  DEFAULT ('') FOR [funktie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___verantw_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___verantw_]  DEFAULT ('') FOR [verantw_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___email___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___email___]  DEFAULT ('') FOR [email___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___assist__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___assist__]  DEFAULT ('') FOR [assist__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___enkelopv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___enkelopv]  DEFAULT ('') FOR [enkelopv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_verte___mapstart]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[verte___] ADD  CONSTRAINT [DF_verte___mapstart]  DEFAULT ('') FOR [mapstart]
END

