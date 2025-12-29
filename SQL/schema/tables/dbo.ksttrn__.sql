SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ksttrn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ksttrn__](
	[trnp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gew_klas] [float] NOT NULL,
	[vast____] [float] NOT NULL,
	[vast_adr] [float] NOT NULL,
	[prijstyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs___] [float] NOT NULL,
	[vast___t] [float] NOT NULL,
	[waarde_t] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
 CONSTRAINT [ksttrni1] PRIMARY KEY CLUSTERED 
(
	[trnp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ksttrn__]') AND name = N'ksttrni2')
CREATE NONCLUSTERED INDEX [ksttrni2] ON [dbo].[ksttrn__]
(
	[trnt_ref] ASC,
	[kstb_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__trnp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__trnp_ref]  DEFAULT ('') FOR [trnp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__gew_klas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__gew_klas]  DEFAULT ((0)) FOR [gew_klas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__vast____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__vast____]  DEFAULT ((0)) FOR [vast____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__vast_adr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__vast_adr]  DEFAULT ((0)) FOR [vast_adr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__prijstyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__prijstyp]  DEFAULT ('') FOR [prijstyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__waarde_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__waarde_t]  DEFAULT ((0)) FOR [waarde_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__soort___]  DEFAULT ('1') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ksttrn__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ksttrn__] ADD  CONSTRAINT [DF_ksttrn__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

