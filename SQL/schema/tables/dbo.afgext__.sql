SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgext__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgext__](
	[ext__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ext__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_01] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_02] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_03] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_04] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_05] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_06] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_07] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_08] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_09] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_11] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_12] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_13] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_14] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_15] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_16] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_17] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_18] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_19] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_20] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_21] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_22] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_23] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_24] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_25] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_26] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_27] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_28] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_29] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_30] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_31] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_32] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_33] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_34] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_35] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_36] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_37] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_38] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_39] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_40] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_41] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_42] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_43] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_44] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_45] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_46] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_47] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgexti1] PRIMARY KEY CLUSTERED 
(
	[ext__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__ext__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__ext__ref]  DEFAULT ('') FOR [ext__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__ext__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__ext__oms]  DEFAULT ('') FOR [ext__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_01]  DEFAULT ('') FOR [tekst_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_02]  DEFAULT ('') FOR [tekst_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_03]  DEFAULT ('') FOR [tekst_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_04]  DEFAULT ('') FOR [tekst_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_05]  DEFAULT ('') FOR [tekst_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_06]  DEFAULT ('') FOR [tekst_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_07]  DEFAULT ('') FOR [tekst_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_08]  DEFAULT ('') FOR [tekst_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_09]  DEFAULT ('') FOR [tekst_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_10]  DEFAULT ('') FOR [tekst_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_11]  DEFAULT ('') FOR [tekst_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_12]  DEFAULT ('') FOR [tekst_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_13]  DEFAULT ('') FOR [tekst_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_14]  DEFAULT ('') FOR [tekst_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_15]  DEFAULT ('') FOR [tekst_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_16]  DEFAULT ('') FOR [tekst_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_17]  DEFAULT ('') FOR [tekst_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_18]  DEFAULT ('') FOR [tekst_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_19]  DEFAULT ('') FOR [tekst_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_20]  DEFAULT ('') FOR [tekst_20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_21]  DEFAULT ('') FOR [tekst_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_22]  DEFAULT ('') FOR [tekst_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_23]  DEFAULT ('') FOR [tekst_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_24]  DEFAULT ('') FOR [tekst_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_25]  DEFAULT ('') FOR [tekst_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_26]  DEFAULT ('') FOR [tekst_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_27]  DEFAULT ('') FOR [tekst_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_28]  DEFAULT ('') FOR [tekst_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_29]  DEFAULT ('') FOR [tekst_29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_30]  DEFAULT ('') FOR [tekst_30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_31]  DEFAULT ('') FOR [tekst_31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_32]  DEFAULT ('') FOR [tekst_32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_33]  DEFAULT ('') FOR [tekst_33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_34]  DEFAULT ('') FOR [tekst_34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_35]  DEFAULT ('') FOR [tekst_35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_36]  DEFAULT ('') FOR [tekst_36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_37]  DEFAULT ('') FOR [tekst_37]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_38]  DEFAULT ('') FOR [tekst_38]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_39]  DEFAULT ('') FOR [tekst_39]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_40]  DEFAULT ('') FOR [tekst_40]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_41]  DEFAULT ('') FOR [tekst_41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_42]  DEFAULT ('') FOR [tekst_42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_43]  DEFAULT ('') FOR [tekst_43]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_44]  DEFAULT ('') FOR [tekst_44]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_45]  DEFAULT ('') FOR [tekst_45]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_46]  DEFAULT ('') FOR [tekst_46]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgext__tekst_47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgext__] ADD  CONSTRAINT [DF_afgext__tekst_47]  DEFAULT ('') FOR [tekst_47]
END

