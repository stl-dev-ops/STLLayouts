SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgovp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgovp__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[overprod] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgovpi0] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[ord__ref] ASC,
	[vrs__ref] ASC,
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgovp__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgovp__] ADD  CONSTRAINT [DF_afgovp__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgovp__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgovp__] ADD  CONSTRAINT [DF_afgovp__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgovp__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgovp__] ADD  CONSTRAINT [DF_afgovp__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgovp__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgovp__] ADD  CONSTRAINT [DF_afgovp__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgovp__overprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgovp__] ADD  CONSTRAINT [DF_afgovp__overprod]  DEFAULT ((0)) FOR [overprod]
END

