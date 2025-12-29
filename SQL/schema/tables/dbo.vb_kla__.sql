SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vb_kla__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vb_kla__](
	[vbst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbkl_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_meth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast___t] [float] NOT NULL,
	[waarde_t] [float] NOT NULL,
	[vkp_vast] [float] NOT NULL,
	[vkp_prpa] [float] NOT NULL,
	[minprys_] [float] NOT NULL,
	[minaant_] [float] NOT NULL,
	[vkp_prgr] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vb_klai1] PRIMARY KEY CLUSTERED 
(
	[vbkl_ref] ASC,
	[vbst_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vbst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vbst_ref]  DEFAULT ('') FOR [vbst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vbst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vbst_srt]  DEFAULT ('') FOR [vbst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vbkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vbkl_ref]  DEFAULT ('') FOR [vbkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__rek_meth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__rek_meth]  DEFAULT ('') FOR [rek_meth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__waarde_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__waarde_t]  DEFAULT ((0)) FOR [waarde_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vkp_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vkp_vast]  DEFAULT ((0)) FOR [vkp_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vkp_prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vkp_prpa]  DEFAULT ((0)) FOR [vkp_prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__minprys_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__minprys_]  DEFAULT ((0)) FOR [minprys_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__minaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__minaant_]  DEFAULT ((0)) FOR [minaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_kla__vkp_prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_kla__] ADD  CONSTRAINT [DF_vb_kla__vkp_prgr]  DEFAULT ((0)) FOR [vkp_prgr]
END

