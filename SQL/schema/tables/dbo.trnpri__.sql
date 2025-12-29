SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trnpri__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trnpri__](
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[gew_klas] [float] NOT NULL,
	[vast____] [float] NOT NULL,
	[prijstyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs___] [float] NOT NULL,
	[vast___t] [float] NOT NULL,
	[waarde_t] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [trnprii1] PRIMARY KEY CLUSTERED 
(
	[trnt_ref] ASC,
	[trnp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__trnp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__trnp_ref]  DEFAULT ('') FOR [trnp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__gew_klas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__gew_klas]  DEFAULT ((0)) FOR [gew_klas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__vast____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__vast____]  DEFAULT ((0)) FOR [vast____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__prijstyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__prijstyp]  DEFAULT ('') FOR [prijstyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnpri__waarde_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnpri__] ADD  CONSTRAINT [DF_trnpri__waarde_t]  DEFAULT ((0)) FOR [waarde_t]
END

