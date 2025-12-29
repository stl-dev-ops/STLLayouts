SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkmat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkmat__](
	[afwm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr__vast] [float] NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[loo__vrh] [int] NOT NULL,
	[mac__vrh] [int] NOT NULL,
	[ovh__vrh] [int] NOT NULL,
	[grd__vrh] [int] NOT NULL,
	[oa___vrh] [int] NOT NULL,
	[tsl_vast] [float] NOT NULL,
	[tsl__pct] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkmati1] PRIMARY KEY CLUSTERED 
(
	[afwm_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__afwm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__afwm_ref]  DEFAULT ('') FOR [afwm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__pr__vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__pr__vast]  DEFAULT ((0)) FOR [pr__vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__loo__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__loo__vrh]  DEFAULT ((0)) FOR [loo__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__mac__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__mac__vrh]  DEFAULT ((0)) FOR [mac__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__ovh__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__ovh__vrh]  DEFAULT ((0)) FOR [ovh__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__grd__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__grd__vrh]  DEFAULT ((0)) FOR [grd__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__oa___vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__oa___vrh]  DEFAULT ((0)) FOR [oa___vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__tsl_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__tsl_vast]  DEFAULT ((0)) FOR [tsl_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmat__tsl__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmat__] ADD  CONSTRAINT [DF_drkmat__tsl__pct]  DEFAULT ((0)) FOR [tsl__pct]
END

