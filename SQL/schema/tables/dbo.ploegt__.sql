SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ploegt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ploegt__](
	[bdgt_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ploegref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[coeff___] [float] NOT NULL,
	[tijdlast] [float] NOT NULL,
	[soc_last] [float] NOT NULL,
	[ntw_uren] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ploegti0] PRIMARY KEY CLUSTERED 
(
	[bdgt_ref] ASC,
	[ploegref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__bdgt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__bdgt_ref]  DEFAULT ('') FOR [bdgt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__ploegref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__ploegref]  DEFAULT ('') FOR [ploegref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__coeff___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__coeff___]  DEFAULT ((0)) FOR [coeff___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__tijdlast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__tijdlast]  DEFAULT ((0)) FOR [tijdlast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__soc_last]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__soc_last]  DEFAULT ((0)) FOR [soc_last]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ploegt__ntw_uren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ploegt__] ADD  CONSTRAINT [DF_ploegt__ntw_uren]  DEFAULT ((0)) FOR [ntw_uren]
END

