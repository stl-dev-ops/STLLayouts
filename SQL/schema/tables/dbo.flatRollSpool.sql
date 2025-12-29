SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[flatRollSpool](
	[flatRollSpoolID] [int] IDENTITY(1,1) NOT NULL,
	[spoolID] [int] NOT NULL,
	[flatRollID] [int] NOT NULL,
	[brickID] [int] NULL,
	[tmstamp] [timestamp] NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [PK_flatRollSpool] PRIMARY KEY CLUSTERED 
(
	[flatRollSpoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'brickflatRollSpool')
CREATE NONCLUSTERED INDEX [brickflatRollSpool] ON [dbo].[flatRollSpool]
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'brickID')
CREATE NONCLUSTERED INDEX [brickID] ON [dbo].[flatRollSpool]
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'flatRollflatRollSpool')
CREATE NONCLUSTERED INDEX [flatRollflatRollSpool] ON [dbo].[flatRollSpool]
(
	[flatRollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'flatRollID')
CREATE NONCLUSTERED INDEX [flatRollID] ON [dbo].[flatRollSpool]
(
	[flatRollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'flatRollSpoolID')
CREATE NONCLUSTERED INDEX [flatRollSpoolID] ON [dbo].[flatRollSpool]
(
	[flatRollSpoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'spoolflatRollSpool')
CREATE NONCLUSTERED INDEX [spoolflatRollSpool] ON [dbo].[flatRollSpool]
(
	[spoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool]') AND name = N'spoolID')
CREATE NONCLUSTERED INDEX [spoolID] ON [dbo].[flatRollSpool]
(
	[spoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRollS__spool__0B3D7FB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRollSpool] ADD  DEFAULT ((0)) FOR [spoolID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRollS__flatR__0C31A3E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRollSpool] ADD  DEFAULT ((0)) FOR [flatRollID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__flatRollS__brick__0D25C822]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRollSpool] ADD  DEFAULT ((0)) FOR [brickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_flatRollSpool_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[flatRollSpool] ADD  CONSTRAINT [DF_flatRollSpool_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool]  WITH NOCHECK ADD  CONSTRAINT [flatRollSpool_FK00] FOREIGN KEY([brickID])
REFERENCES [dbo].[brick] ([brickID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool] NOCHECK CONSTRAINT [flatRollSpool_FK00]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool]  WITH NOCHECK ADD  CONSTRAINT [flatRollSpool_FK01] FOREIGN KEY([flatRollID])
REFERENCES [dbo].[flatRoll] ([flatRollID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK01]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool] NOCHECK CONSTRAINT [flatRollSpool_FK01]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool]  WITH NOCHECK ADD  CONSTRAINT [flatRollSpool_FK02] FOREIGN KEY([spoolID])
REFERENCES [dbo].[spool] ([spoolID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[flatRollSpool_FK02]') AND parent_object_id = OBJECT_ID(N'[dbo].[flatRollSpool]'))
ALTER TABLE [dbo].[flatRollSpool] NOCHECK CONSTRAINT [flatRollSpool_FK02]
