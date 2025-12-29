SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Parameters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_Parameters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductGroup] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[CoatingRequired] [tinyint] NOT NULL,
	[ShifDurationHours] [int] NOT NULL,
	[JobSetupFeet] [int] NOT NULL,
	[WasteFeet] [int] NOT NULL,
	[WasteFeetInterval] [int] NOT NULL,
	[ShiftChangeFeet] [int] NOT NULL,
	[SetupHours] [float] NOT NULL,
	[RunSpeedFeetPerMinute] [int] NOT NULL,
	[RollChangeAdditionalMinutes] [int] NOT NULL,
	[RollFeet] [int] NOT NULL,
	[TearDownHours] [float] NOT NULL,
	[ShiftChangesHours] [float] NOT NULL,
	[PressCostPerHour] [int] NOT NULL,
	[PlateDieDepreciationPer1000] [int] NOT NULL,
	[InkCost] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
 CONSTRAINT [PK_stlQP_Parameters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Parameters]') AND name = N'IX_stlQP_ParametersUniqueProductGroup')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlQP_ParametersUniqueProductGroup] ON [dbo].[stlQP_Parameters]
(
	[ProductGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Parameters_Blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Parameters] ADD  CONSTRAINT [DF_stlQP_Parameters_Blocked]  DEFAULT ((0)) FOR [Blocked]
END

