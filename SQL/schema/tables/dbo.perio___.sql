SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[perio___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[perio___](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_om2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bgp__dat] [date] NOT NULL,
	[edp__dat] [date] NOT NULL,
	[budgverd] [float] NOT NULL,
	[bdgt_vrh] [float] NOT NULL,
	[buwp_vrh] [float] NOT NULL,
	[adm__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpfktyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpfktyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fintrnyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[divtrnyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[logkosyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omloopyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_peri] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[perio___]') AND name = N'idx_per2')
CREATE NONCLUSTERED INDEX [idx_per2] ON [dbo].[perio___]
(
	[bgp__dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___peri_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___peri_oms]  DEFAULT ('') FOR [peri_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___peri_om2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___peri_om2]  DEFAULT ('') FOR [peri_om2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___bgp__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___bgp__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bgp__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___edp__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___edp__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [edp__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___budgverd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___budgverd]  DEFAULT ((0)) FOR [budgverd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___bdgt_vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___bdgt_vrh]  DEFAULT ((0)) FOR [bdgt_vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___buwp_vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___buwp_vrh]  DEFAULT ((0)) FOR [buwp_vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___adm__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___adm__tst]  DEFAULT ('') FOR [adm__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___akpfktyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___akpfktyn]  DEFAULT ('') FOR [akpfktyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___vkpfktyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___vkpfktyn]  DEFAULT ('') FOR [vkpfktyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___fintrnyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___fintrnyn]  DEFAULT ('') FOR [fintrnyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___divtrnyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___divtrnyn]  DEFAULT ('') FOR [divtrnyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___logkosyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___logkosyn]  DEFAULT ('') FOR [logkosyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perio___omloopyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perio___] ADD  CONSTRAINT [DF_perio___omloopyn]  DEFAULT ('') FOR [omloopyn]
END

