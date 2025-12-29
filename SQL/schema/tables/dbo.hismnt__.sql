SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hismnt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hismnt__](
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lchg_dat] [date] NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [datetime2](3) NOT NULL,
	[koersakp] [float] NOT NULL,
	[koersvkp] [float] NOT NULL,
	[koers_bi] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hismnti1] PRIMARY KEY CLUSTERED 
(
	[munt_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hismnt__]') AND name = N'hismnti0')
CREATE NONCLUSTERED INDEX [hismnti0] ON [dbo].[hismnt__]
(
	[munt_ref] ASC,
	[lchg_dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__lchg_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__lchg_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lchg_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__datum___]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__koersakp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__koersakp]  DEFAULT ((0)) FOR [koersakp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__koersvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__koersvkp]  DEFAULT ((0)) FOR [koersvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hismnt__koers_bi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hismnt__] ADD  CONSTRAINT [DF_hismnt__koers_bi]  DEFAULT ((0)) FOR [koers_bi]
END

