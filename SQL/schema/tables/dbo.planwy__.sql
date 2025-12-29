SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planwy__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planwy__](
	[plwy_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl_prio] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_0] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd_0] [int] NOT NULL,
	[pln_dd_1] [int] NOT NULL,
	[pln_dd_2] [int] NOT NULL,
	[pln_dd_3] [int] NOT NULL,
	[transprt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm21] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm22] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm31] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm32] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm33] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm34] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm35] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm36] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt31] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt32] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt33] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt34] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt35] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt36] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd11] [int] NOT NULL,
	[pln_dd12] [int] NOT NULL,
	[pln_dd13] [int] NOT NULL,
	[pln_dd21] [int] NOT NULL,
	[pln_dd22] [int] NOT NULL,
	[pln_dd31] [int] NOT NULL,
	[pln_dd32] [int] NOT NULL,
	[pln_dd33] [int] NOT NULL,
	[pln_dd34] [int] NOT NULL,
	[pln_dd35] [int] NOT NULL,
	[pln_dd36] [int] NOT NULL,
	[pln_tm61] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt61] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd61] [int] NOT NULL,
	[pln_tm62] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt62] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd62] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_plwy] PRIMARY KEY CLUSTERED 
(
	[plwy_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__plwy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__plwy_ref]  DEFAULT ('') FOR [plwy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__dvl_prio]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__dvl_prio]  DEFAULT ('') FOR [dvl_prio]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt_0]  DEFAULT ('') FOR [pln_dt_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt_1]  DEFAULT ('') FOR [pln_dt_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt_2]  DEFAULT ('') FOR [pln_dt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt_3]  DEFAULT ('') FOR [pln_dt_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd_0]  DEFAULT ((0)) FOR [pln_dd_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd_1]  DEFAULT ((0)) FOR [pln_dd_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd_2]  DEFAULT ((0)) FOR [pln_dd_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd_3]  DEFAULT ((0)) FOR [pln_dd_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__transprt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__transprt]  DEFAULT ('') FOR [transprt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm11]  DEFAULT ('') FOR [pln_tm11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm12]  DEFAULT ('') FOR [pln_tm12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm13]  DEFAULT ('') FOR [pln_tm13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm21]  DEFAULT ('') FOR [pln_tm21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm22]  DEFAULT ('') FOR [pln_tm22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm31]  DEFAULT ('') FOR [pln_tm31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm32]  DEFAULT ('') FOR [pln_tm32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm33]  DEFAULT ('') FOR [pln_tm33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm34]  DEFAULT ('') FOR [pln_tm34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm35]  DEFAULT ('') FOR [pln_tm35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm36]  DEFAULT ('') FOR [pln_tm36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt11]  DEFAULT ('') FOR [pln_dt11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt12]  DEFAULT ('') FOR [pln_dt12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt13]  DEFAULT ('') FOR [pln_dt13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt21]  DEFAULT ('') FOR [pln_dt21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt22]  DEFAULT ('') FOR [pln_dt22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt31]  DEFAULT ('') FOR [pln_dt31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt32]  DEFAULT ('') FOR [pln_dt32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt33]  DEFAULT ('') FOR [pln_dt33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt34]  DEFAULT ('') FOR [pln_dt34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt35]  DEFAULT ('') FOR [pln_dt35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt36]  DEFAULT ('') FOR [pln_dt36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd11]  DEFAULT ((0)) FOR [pln_dd11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd12]  DEFAULT ((0)) FOR [pln_dd12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd13]  DEFAULT ((0)) FOR [pln_dd13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd21]  DEFAULT ((0)) FOR [pln_dd21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd22]  DEFAULT ((0)) FOR [pln_dd22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd31]  DEFAULT ((0)) FOR [pln_dd31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd32]  DEFAULT ((0)) FOR [pln_dd32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd33]  DEFAULT ((0)) FOR [pln_dd33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd34]  DEFAULT ((0)) FOR [pln_dd34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd35]  DEFAULT ((0)) FOR [pln_dd35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd36]  DEFAULT ((0)) FOR [pln_dd36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm61]  DEFAULT ('') FOR [pln_tm61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt61]  DEFAULT ('') FOR [pln_dt61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd61]  DEFAULT ((0)) FOR [pln_dd61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_tm62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_tm62]  DEFAULT ('') FOR [pln_tm62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dt62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dt62]  DEFAULT ('') FOR [pln_dt62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planwy__pln_dd62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planwy__] ADD  CONSTRAINT [DF_planwy__pln_dd62]  DEFAULT ((0)) FOR [pln_dd62]
END

