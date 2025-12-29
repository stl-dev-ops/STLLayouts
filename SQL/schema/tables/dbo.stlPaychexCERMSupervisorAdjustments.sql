SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexCERMSupervisorAdjustments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexCERMSupervisorAdjustments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[SHIFTDATE] [datetime] NOT NULL,
	[CERM_Hours_Adjustment] [float] NOT NULL,
	[Paychex_Hours_Adjustment] [float] NOT NULL,
	[Adjustment_Reason] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPaychexCERMSupervisorAdjustments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexCERMSupervisorAdjustments]') AND name = N'IX_Table_empNo_SHIFTDATE')
CREATE NONCLUSTERED INDEX [IX_Table_empNo_SHIFTDATE] ON [dbo].[stlPaychexCERMSupervisorAdjustments]
(
	[Deleted] ASC,
	[empNo] ASC,
	[SHIFTDATE] ASC
)
INCLUDE([CERM_Hours_Adjustment],[Paychex_Hours_Adjustment],[Adjustment_Reason],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexCERMSupervisorAdjustments_Adjustment_Reason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexCERMSupervisorAdjustments] ADD  CONSTRAINT [DF_stlPaychexCERMSupervisorAdjustments_Adjustment_Reason]  DEFAULT ('') FOR [Adjustment_Reason]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_Deleted1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexCERMSupervisorAdjustments] ADD  CONSTRAINT [DF_Table_1_Deleted1]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexCERMSupervisorAdjustments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexCERMSupervisorAdjustments] ADD  CONSTRAINT [DF_stlPaychexCERMSupervisorAdjustments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexCERMSupervisorAdjustments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexCERMSupervisorAdjustments] ADD  CONSTRAINT [DF_stlPaychexCERMSupervisorAdjustments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

