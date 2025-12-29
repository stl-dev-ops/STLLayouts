SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gegant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gegant__](
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_oms] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[default_] [bit] NOT NULL,
 CONSTRAINT [geganti0] PRIMARY KEY CLUSTERED 
(
	[vrg__ref] ASC,
	[antw_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__antw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__antw_ref]  DEFAULT ('') FOR [antw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__antw_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__antw_oms]  DEFAULT ('') FOR [antw_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegant__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegant__] ADD  CONSTRAINT [DF_gegant__default_]  DEFAULT ((0)) FOR [default_]
END

