SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[betkon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[betkon__](
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[verv_f_m] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verv_dag] [int] NOT NULL,
	[verv2dag] [int] NOT NULL,
	[verv3dag] [int] NOT NULL,
	[verv4dag] [int] NOT NULL,
	[verv5dag] [int] NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kon_kort] [float] NOT NULL,
	[kon2kort] [float] NOT NULL,
	[exl_incl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pct__fin] [float] NOT NULL,
	[ref_v45_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitstl01] [int] NOT NULL,
	[uitstl02] [int] NOT NULL,
	[uitstl03] [int] NOT NULL,
	[uitstl04] [int] NOT NULL,
	[uitstl05] [int] NOT NULL,
	[uitstl06] [int] NOT NULL,
	[uitstl07] [int] NOT NULL,
	[uitstl08] [int] NOT NULL,
	[uitstl09] [int] NOT NULL,
	[uitstl10] [int] NOT NULL,
	[uitstl11] [int] NOT NULL,
	[uitstl12] [int] NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[verv_dag_fixed] [bit] NOT NULL,
 CONSTRAINT [idx_betk] PRIMARY KEY CLUSTERED 
(
	[betk_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv_f_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv_f_m]  DEFAULT ('') FOR [verv_f_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv_dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv_dag]  DEFAULT ((0)) FOR [verv_dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv2dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv2dag]  DEFAULT ((0)) FOR [verv2dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv3dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv3dag]  DEFAULT ((0)) FOR [verv3dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv4dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv4dag]  DEFAULT ((0)) FOR [verv4dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv5dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv5dag]  DEFAULT ((0)) FOR [verv5dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__kon_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__kon_kort]  DEFAULT ((0)) FOR [kon_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__kon2kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__kon2kort]  DEFAULT ((0)) FOR [kon2kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__exl_incl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__exl_incl]  DEFAULT ('') FOR [exl_incl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__pct__fin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__pct__fin]  DEFAULT ((0)) FOR [pct__fin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__ref_v45_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__ref_v45_]  DEFAULT ('') FOR [ref_v45_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl01]  DEFAULT ((0)) FOR [uitstl01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl02]  DEFAULT ((0)) FOR [uitstl02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl03]  DEFAULT ((0)) FOR [uitstl03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl04]  DEFAULT ((0)) FOR [uitstl04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl05]  DEFAULT ((0)) FOR [uitstl05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl06]  DEFAULT ((0)) FOR [uitstl06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl07]  DEFAULT ((0)) FOR [uitstl07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl08]  DEFAULT ((0)) FOR [uitstl08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl09]  DEFAULT ((0)) FOR [uitstl09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl10]  DEFAULT ((0)) FOR [uitstl10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl11]  DEFAULT ((0)) FOR [uitstl11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__uitstl12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__uitstl12]  DEFAULT ((0)) FOR [uitstl12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betkon__verv_dag_fixed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betkon__] ADD  CONSTRAINT [DF_betkon__verv_dag_fixed]  DEFAULT ((0)) FOR [verv_dag_fixed]
END

