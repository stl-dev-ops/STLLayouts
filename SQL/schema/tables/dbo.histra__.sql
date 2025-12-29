SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[histra__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[histra__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[trnd_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_afsl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_afsl] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[kost__vm] [float] NOT NULL,
	[kost__bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [histrai0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__trnd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__trnd_ref]  DEFAULT ('') FOR [trnd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__dat_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__dat_afsl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__kost__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__kost__vm]  DEFAULT ((0)) FOR [kost__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histra__kost__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histra__] ADD  CONSTRAINT [DF_histra__kost__bm]  DEFAULT ((0)) FOR [kost__bm]
END

