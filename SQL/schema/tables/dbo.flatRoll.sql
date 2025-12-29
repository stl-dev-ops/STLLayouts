SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[flatRoll](
	[flatRollID] [int] IDENTITY(1,1) NOT NULL,
	[brickID] [int] NULL,
	[flatRollNo] [int] NULL,
	[notUsed] [bit] NOT NULL,
	[notUsedNote] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[spoolerID] [int] NULL,
	[operatorID] [int] NULL,
	[tmstamp] [timestamp] NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [aaaaaflatRoll_PK] PRIMARY KEY NONCLUSTERED 
(
	[flatRollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND name = N'brickflatRoll')
CREATE NONCLUSTERED INDEX [brickflatRoll] ON [dbo].[flatRoll]
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND name = N'brickID')
CREATE NONCLUSTERED INDEX [brickID] ON [dbo].[flatRoll]
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND name = N'operatorflatRoll')
CREATE NONCLUSTERED INDEX [operatorflatRoll] ON [dbo].[flatRoll]
(
	[operatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND name = N'operatorID')
CREATE NONCLUSTERED INDEX [operatorID] ON [dbo].[flatRoll]
(
	[operatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll]') AND name = N'spoolerflatRoll')
CREATE NONCLUSTERED INDEX [spoolerflatRoll] ON [dbo].[flatRoll]
(
	[spoolerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRoll__brickI__10F65906]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  DEFAULT ((0)) FOR [brickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRoll__flatRo__11EA7D3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  DEFAULT ((0)) FOR [flatRollNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRoll__notUse__12DEA178]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  DEFAULT ((0)) FOR [notUsed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRoll__spoole__13D2C5B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  DEFAULT ((0)) FOR [spoolerID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRoll__operat__14C6E9EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  DEFAULT ((0)) FOR [operatorID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_flatRoll_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRoll] ADD  CONSTRAINT [DF_flatRoll_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll]  WITH NOCHECK ADD  CONSTRAINT [flatRoll_FK00] FOREIGN KEY([brickID])
REFERENCES [dbo].[brick] ([brickID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll] NOCHECK CONSTRAINT [flatRoll_FK00]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll]  WITH NOCHECK ADD  CONSTRAINT [flatRoll_FK01] FOREIGN KEY([operatorID])
REFERENCES [dbo].[operator] ([operatorID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll] NOCHECK CONSTRAINT [flatRoll_FK01]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll]  WITH NOCHECK ADD  CONSTRAINT [flatRoll_FK02] FOREIGN KEY([spoolerID])
REFERENCES [dbo].[spooler] ([spoolerID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRoll_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRoll]'))
ALTER TABLE [dbo].[flatRoll] NOCHECK CONSTRAINT [flatRoll_FK02]
