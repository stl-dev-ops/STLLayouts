SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2evrm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2evrm__](
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [int] NOT NULL,
	[tedrk_to] [float] NOT NULL,
	[tedrkins] [float] NOT NULL,
	[tedrk___] [float] NOT NULL,
	[prcininl] [float] NOT NULL,
	[prcinofl] [float] NOT NULL,
	[vstininl] [float] NOT NULL,
	[vstinofl] [float] NOT NULL,
	[lead__in] [float] NOT NULL,
	[lead_out] [float] NOT NULL,
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2evrmi0] PRIMARY KEY CLUSTERED 
(
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2evrm__]') AND name = N'v2evrmi1')
CREATE NONCLUSTERED INDEX [v2evrmi1] ON [dbo].[v2evrm__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2evrm__]') AND name = N'v2evrmi2')
CREATE NONCLUSTERED INDEX [v2evrmi2] ON [dbo].[v2evrm__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__vrm__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__vrm__vnr]  DEFAULT ('') FOR [vrm__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__tedrk_to]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__tedrk_to]  DEFAULT ((0)) FOR [tedrk_to]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__tedrkins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__tedrkins]  DEFAULT ((0)) FOR [tedrkins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__tedrk___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__tedrk___]  DEFAULT ((0)) FOR [tedrk___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__prcininl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__prcininl]  DEFAULT ((0)) FOR [prcininl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__prcinofl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__prcinofl]  DEFAULT ((0)) FOR [prcinofl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__vstininl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__vstininl]  DEFAULT ((0)) FOR [vstininl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__vstinofl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__vstinofl]  DEFAULT ((0)) FOR [vstinofl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__lead__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__lead__in]  DEFAULT ((0)) FOR [lead__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__lead_out]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__lead_out]  DEFAULT ((0)) FOR [lead_out]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2evrm__stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2evrm__] ADD  CONSTRAINT [DF_v2evrm__stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

