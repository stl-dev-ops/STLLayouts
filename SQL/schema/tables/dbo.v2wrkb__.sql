SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2wrkb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2wrkb__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_lyn_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_lyn_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_lyn_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_lyn_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2wrkbi1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_01]  DEFAULT ('') FOR [w_lyn_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_02]  DEFAULT ('') FOR [w_lyn_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_03]  DEFAULT ('') FOR [w_lyn_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_04]  DEFAULT ('') FOR [w_lyn_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_05]  DEFAULT ('') FOR [w_lyn_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_06]  DEFAULT ('') FOR [w_lyn_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_07]  DEFAULT ('') FOR [w_lyn_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_08]  DEFAULT ('') FOR [w_lyn_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_09]  DEFAULT ('') FOR [w_lyn_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_10]  DEFAULT ('') FOR [w_lyn_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_11]  DEFAULT ('') FOR [w_lyn_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_12]  DEFAULT ('') FOR [w_lyn_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_13]  DEFAULT ('') FOR [w_lyn_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_14]  DEFAULT ('') FOR [w_lyn_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_15]  DEFAULT ('') FOR [w_lyn_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__w_lyn_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__w_lyn_16]  DEFAULT ('') FOR [w_lyn_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_01]  DEFAULT ('') FOR [p_lyn_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_02]  DEFAULT ('') FOR [p_lyn_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_03]  DEFAULT ('') FOR [p_lyn_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_04]  DEFAULT ('') FOR [p_lyn_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_05]  DEFAULT ('') FOR [p_lyn_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_06]  DEFAULT ('') FOR [p_lyn_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_07]  DEFAULT ('') FOR [p_lyn_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_08]  DEFAULT ('') FOR [p_lyn_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_09]  DEFAULT ('') FOR [p_lyn_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_10]  DEFAULT ('') FOR [p_lyn_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_11]  DEFAULT ('') FOR [p_lyn_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_12]  DEFAULT ('') FOR [p_lyn_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_13]  DEFAULT ('') FOR [p_lyn_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_14]  DEFAULT ('') FOR [p_lyn_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_15]  DEFAULT ('') FOR [p_lyn_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__p_lyn_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__p_lyn_16]  DEFAULT ('') FOR [p_lyn_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_01]  DEFAULT ('') FOR [a_lyn_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_02]  DEFAULT ('') FOR [a_lyn_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_03]  DEFAULT ('') FOR [a_lyn_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_04]  DEFAULT ('') FOR [a_lyn_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_05]  DEFAULT ('') FOR [a_lyn_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_06]  DEFAULT ('') FOR [a_lyn_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_07]  DEFAULT ('') FOR [a_lyn_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_08]  DEFAULT ('') FOR [a_lyn_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_09]  DEFAULT ('') FOR [a_lyn_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_10]  DEFAULT ('') FOR [a_lyn_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_11]  DEFAULT ('') FOR [a_lyn_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_12]  DEFAULT ('') FOR [a_lyn_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_13]  DEFAULT ('') FOR [a_lyn_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_14]  DEFAULT ('') FOR [a_lyn_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_15]  DEFAULT ('') FOR [a_lyn_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__a_lyn_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__a_lyn_16]  DEFAULT ('') FOR [a_lyn_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_01]  DEFAULT ('') FOR [v_lyn_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_02]  DEFAULT ('') FOR [v_lyn_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_03]  DEFAULT ('') FOR [v_lyn_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_04]  DEFAULT ('') FOR [v_lyn_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_05]  DEFAULT ('') FOR [v_lyn_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_06]  DEFAULT ('') FOR [v_lyn_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_07]  DEFAULT ('') FOR [v_lyn_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_08]  DEFAULT ('') FOR [v_lyn_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_09]  DEFAULT ('') FOR [v_lyn_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_10]  DEFAULT ('') FOR [v_lyn_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_11]  DEFAULT ('') FOR [v_lyn_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_12]  DEFAULT ('') FOR [v_lyn_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_13]  DEFAULT ('') FOR [v_lyn_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_14]  DEFAULT ('') FOR [v_lyn_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_15]  DEFAULT ('') FOR [v_lyn_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2wrkb__v_lyn_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2wrkb__] ADD  CONSTRAINT [DF_v2wrkb__v_lyn_16]  DEFAULT ('') FOR [v_lyn_16]
END

