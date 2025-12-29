SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_JobsRanWarehouseData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_JobsRanWarehouseData](
	[rowid] [int] NOT NULL,
	[stlPDI_ID] [int] NULL,
	[ProjectID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[TimesFellOffPress] [int] NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PD_Hours] [numeric](17, 6) NULL,
	[MaterialCost] [float] NULL,
	[OutsideServicesCost] [float] NULL,
	[MachineCost] [float] NULL,
	[PO_Cost] [float] NULL,
	[ACT_TOT_COST] [float] NULL,
	[Updated] [datetime] NOT NULL,
 CONSTRAINT [PK_stlPDI_JobsRanWarehouseData] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_JobsRanWarehouseData]') AND name = N'IX_stlPDI_JobsRanWarehouseData_stlPDI_ID_ProjectID')
CREATE NONCLUSTERED INDEX [IX_stlPDI_JobsRanWarehouseData_stlPDI_ID_ProjectID] ON [dbo].[stlPDI_JobsRanWarehouseData]
(
	[stlPDI_ID] ASC,
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_JobsRanWarehouseData_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRanWarehouseData] ADD  CONSTRAINT [DF_stlPDI_JobsRanWarehouseData_Updated]  DEFAULT (getdate()) FOR [Updated]
END

