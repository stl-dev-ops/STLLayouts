SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fol_pr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fol_pr__](
	[fol__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fol__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[instelvs] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instelcl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fol__spd] [float] NOT NULL,
	[folinspr] [float] NOT NULL,
	[papgew_1] [int] NOT NULL,
	[papgew_2] [int] NOT NULL,
	[invlgew1] [float] NOT NULL,
	[invlgew2] [float] NOT NULL,
	[invlgew3] [float] NOT NULL,
	[drtrk__1] [int] NOT NULL,
	[drtrk__2] [int] NOT NULL,
	[invldrt1] [float] NOT NULL,
	[invldrt2] [float] NOT NULL,
	[invldrt3] [float] NOT NULL,
	[prys____] [float] NOT NULL,
	[fol__lok] [float] NOT NULL,
	[fol__mak] [float] NOT NULL,
	[fol__ovk] [float] NOT NULL,
	[grdfol_t] [float] NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fol_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_1] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_2] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_3] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_4] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[kombrf_5] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [fol_pri1] PRIMARY KEY CLUSTERED 
(
	[fol__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__ref]  DEFAULT ('') FOR [fol__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__oms]  DEFAULT ('') FOR [fol__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__instelvs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__instelvs]  DEFAULT ('') FOR [instelvs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__instelcl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__instelcl]  DEFAULT ('') FOR [instelcl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__spd]  DEFAULT ((0)) FOR [fol__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__folinspr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__folinspr]  DEFAULT ((0)) FOR [folinspr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__papgew_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__papgew_1]  DEFAULT ((0)) FOR [papgew_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__papgew_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__papgew_2]  DEFAULT ((0)) FOR [papgew_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invlgew1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invlgew1]  DEFAULT ((0)) FOR [invlgew1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invlgew2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invlgew2]  DEFAULT ((0)) FOR [invlgew2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invlgew3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invlgew3]  DEFAULT ((0)) FOR [invlgew3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__drtrk__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__drtrk__1]  DEFAULT ((0)) FOR [drtrk__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__drtrk__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__drtrk__2]  DEFAULT ((0)) FOR [drtrk__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invldrt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invldrt1]  DEFAULT ((0)) FOR [invldrt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invldrt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invldrt2]  DEFAULT ((0)) FOR [invldrt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__invldrt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__invldrt3]  DEFAULT ((0)) FOR [invldrt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__prys____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__prys____]  DEFAULT ((0)) FOR [prys____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__lok]  DEFAULT ((0)) FOR [fol__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__mak]  DEFAULT ((0)) FOR [fol__mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol__ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol__ovk]  DEFAULT ((0)) FOR [fol__ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__grdfol_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__grdfol_t]  DEFAULT ((0)) FOR [grdfol_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__fol_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__fol_komm]  DEFAULT ('') FOR [fol_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__kombrf_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__kombrf_1]  DEFAULT ('') FOR [kombrf_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__kombrf_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__kombrf_2]  DEFAULT ('') FOR [kombrf_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__kombrf_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__kombrf_3]  DEFAULT ('') FOR [kombrf_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__kombrf_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__kombrf_4]  DEFAULT ('') FOR [kombrf_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fol_pr__kombrf_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fol_pr__] ADD  CONSTRAINT [DF_fol_pr__kombrf_5]  DEFAULT ('') FOR [kombrf_5]
END

