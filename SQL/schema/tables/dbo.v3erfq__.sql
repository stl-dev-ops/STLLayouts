SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3erfq__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3erfq__](
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wikk____] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[radius__] [float] NOT NULL,
	[rol____b] [float] NOT NULL,
	[aantallb] [float] NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_lm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_rg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorrang] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantalmx] [float] NOT NULL,
	[meter_mx] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[aant_afg] [int] NOT NULL,
	[etas1ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas3ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas4ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas5ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[overlap_] [float] NOT NULL,
	[lay_flat] [float] NOT NULL,
	[lbl__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3erfqi0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__wikk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__wikk____]  DEFAULT ('') FOR [wikk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__eti_vorm]  DEFAULT ('') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__rol____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__rol____b]  DEFAULT ((0)) FOR [rol____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__aantallb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__aantallb]  DEFAULT ((0)) FOR [aantallb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__klcod_lm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__klcod_lm]  DEFAULT ('') FOR [klcod_lm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__klcod_rg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__klcod_rg]  DEFAULT ('') FOR [klcod_rg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__voorrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__voorrang]  DEFAULT ('') FOR [voorrang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__aantalmx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__aantalmx]  DEFAULT ((0)) FOR [aantalmx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__meter_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__meter_mx]  DEFAULT ((0)) FOR [meter_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__aant_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__aant_afg]  DEFAULT ((0)) FOR [aant_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etas1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etas1ref]  DEFAULT ('') FOR [etas1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etas2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etas2ref]  DEFAULT ('') FOR [etas2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etas3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etas3ref]  DEFAULT ('') FOR [etas3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etas4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etas4ref]  DEFAULT ('') FOR [etas4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__etas5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__etas5ref]  DEFAULT ('') FOR [etas5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__overlap_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__overlap_]  DEFAULT ((0)) FOR [overlap_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__lay_flat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__lay_flat]  DEFAULT ((0)) FOR [lay_flat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3erfq__lbl__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3erfq__] ADD  CONSTRAINT [DF_v3erfq__lbl__srt]  DEFAULT ('') FOR [lbl__srt]
END

