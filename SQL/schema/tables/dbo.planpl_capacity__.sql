SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planpl_capacity__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planpl_capacity__](
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[day] [date] NOT NULL,
	[capacity_id] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [planpl_capacityi0] PRIMARY KEY CLUSTERED 
(
	[plpl_ref] ASC,
	[day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity__] ADD  CONSTRAINT [DF_planpl_capacity__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity__day]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity__] ADD  CONSTRAINT [DF_planpl_capacity__day]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [day]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity__capacity_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity__] ADD  CONSTRAINT [DF_planpl_capacity__capacity_id]  DEFAULT ((0)) FOR [capacity_id]
END

