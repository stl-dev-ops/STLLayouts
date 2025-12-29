SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprskl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprskl__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_lm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_rg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[spdinv__] [float] NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___in] [float] NOT NULL,
	[was____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antatorn] [int] NOT NULL,
	[stlafg_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlafgin] [float] NOT NULL,
	[ins__prc] [float] NOT NULL,
	[kl__1lok] [float] NOT NULL,
	[kl__1mak] [float] NOT NULL,
	[kl__1ovk] [float] NOT NULL,
	[kl__2lok] [float] NOT NULL,
	[kl__2mak] [float] NOT NULL,
	[kl__2ovk] [float] NOT NULL,
	[pp1000kl] [float] NOT NULL,
	[pp1000m_] [float] NOT NULL,
	[antklomw] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprskli2] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__klcod_lm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__klcod_lm]  DEFAULT ('') FOR [klcod_lm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__klcod_rg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__klcod_rg]  DEFAULT ('') FOR [klcod_rg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__spdinv__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__spdinv__]  DEFAULT ((0)) FOR [spdinv__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__was____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__was____t]  DEFAULT ('') FOR [was____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__antatorn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__antatorn]  DEFAULT ((0)) FOR [antatorn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__stlafg_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__stlafg_t]  DEFAULT ('') FOR [stlafg_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__stlafgin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__stlafgin]  DEFAULT ((0)) FOR [stlafgin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__ins__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__ins__prc]  DEFAULT ((0)) FOR [ins__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__1lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__1lok]  DEFAULT ((0)) FOR [kl__1lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__1mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__1mak]  DEFAULT ((0)) FOR [kl__1mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__1ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__1ovk]  DEFAULT ((0)) FOR [kl__1ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__2lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__2lok]  DEFAULT ((0)) FOR [kl__2lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__2mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__2mak]  DEFAULT ((0)) FOR [kl__2mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__kl__2ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__kl__2ovk]  DEFAULT ((0)) FOR [kl__2ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__pp1000kl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__pp1000kl]  DEFAULT ((0)) FOR [pp1000kl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__pp1000m_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__pp1000m_]  DEFAULT ((0)) FOR [pp1000m_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprskl__antklomw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprskl__] ADD  CONSTRAINT [DF_eprskl__antklomw]  DEFAULT ((0)) FOR [antklomw]
END

