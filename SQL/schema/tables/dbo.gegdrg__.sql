SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gegdrg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gegdrg__](
	[ggdr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[send_job] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ggdr_grp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[krt_fmt1] [float] NOT NULL,
	[krt_fmt2] [float] NOT NULL,
	[eerstmes] [float] NOT NULL,
	[laatstmesy] [float] NOT NULL,
	[eerstmesx] [float] NOT NULL,
	[laatstmesx] [float] NOT NULL,
	[tsssnt_h] [float] NOT NULL,
	[tsssnt_v] [float] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrdarth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_17] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_18] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_19] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_20] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_21] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_22] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_23] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_24] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_25] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_26] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_27] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_28] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_29] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[kllyn_30] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gegdrgi1] PRIMARY KEY CLUSTERED 
(
	[ggdr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__ggdr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__ggdr_ref]  DEFAULT ('') FOR [ggdr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__send_job]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__send_job]  DEFAULT ('') FOR [send_job]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__ggdr_grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__ggdr_grp]  DEFAULT ('') FOR [ggdr_grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__krt_fmt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__krt_fmt1]  DEFAULT ((0)) FOR [krt_fmt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__krt_fmt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__krt_fmt2]  DEFAULT ((0)) FOR [krt_fmt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__eerstmes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__eerstmes]  DEFAULT ((0)) FOR [eerstmes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__laatstmesy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__laatstmesy]  DEFAULT ((0)) FOR [laatstmesy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__eerstmesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__eerstmesx]  DEFAULT ((0)) FOR [eerstmesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__laatstmesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__laatstmesx]  DEFAULT ((0)) FOR [laatstmesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__tsssnt_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__tsssnt_h]  DEFAULT ((0)) FOR [tsssnt_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__tsssnt_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__tsssnt_v]  DEFAULT ((0)) FOR [tsssnt_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__looprich]  DEFAULT ('1') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__vrrdarth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__vrrdarth]  DEFAULT ('1') FOR [vrrdarth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_01]  DEFAULT ('') FOR [kllyn_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_02]  DEFAULT ('') FOR [kllyn_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_03]  DEFAULT ('') FOR [kllyn_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_04]  DEFAULT ('') FOR [kllyn_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_05]  DEFAULT ('') FOR [kllyn_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_06]  DEFAULT ('') FOR [kllyn_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_07]  DEFAULT ('') FOR [kllyn_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_08]  DEFAULT ('') FOR [kllyn_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_09]  DEFAULT ('') FOR [kllyn_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_10]  DEFAULT ('') FOR [kllyn_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_11]  DEFAULT ('') FOR [kllyn_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_12]  DEFAULT ('') FOR [kllyn_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_13]  DEFAULT ('') FOR [kllyn_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_14]  DEFAULT ('') FOR [kllyn_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_15]  DEFAULT ('') FOR [kllyn_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_16]  DEFAULT ('') FOR [kllyn_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_17]  DEFAULT ('') FOR [kllyn_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_18]  DEFAULT ('') FOR [kllyn_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_19]  DEFAULT ('') FOR [kllyn_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_20]  DEFAULT ('') FOR [kllyn_20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_21]  DEFAULT ('') FOR [kllyn_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_22]  DEFAULT ('') FOR [kllyn_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_23]  DEFAULT ('') FOR [kllyn_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_24]  DEFAULT ('') FOR [kllyn_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_25]  DEFAULT ('') FOR [kllyn_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_26]  DEFAULT ('') FOR [kllyn_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_27]  DEFAULT ('') FOR [kllyn_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_28]  DEFAULT ('') FOR [kllyn_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_29]  DEFAULT ('') FOR [kllyn_29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegdrg__kllyn_30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegdrg__] ADD  CONSTRAINT [DF_gegdrg__kllyn_30]  DEFAULT ('') FOR [kllyn_30]
END

