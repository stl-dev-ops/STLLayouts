SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprsno__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprsno__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl_fr_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl_lm_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl_rg_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___in] [float] NOT NULL,
	[stl_frin] [float] NOT NULL,
	[stl_lmin] [float] NOT NULL,
	[stl_rgin] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprsnoi0] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_fr_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_fr_t]  DEFAULT ('') FOR [stl_fr_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_lm_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_lm_t]  DEFAULT ('') FOR [stl_lm_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_rg_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_rg_t]  DEFAULT ('') FOR [stl_rg_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_frin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_frin]  DEFAULT ((0)) FOR [stl_frin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_lmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_lmin]  DEFAULT ((0)) FOR [stl_lmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsno__stl_rgin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsno__] ADD  CONSTRAINT [DF_eprsno__stl_rgin]  DEFAULT ((0)) FOR [stl_rgin]
END

