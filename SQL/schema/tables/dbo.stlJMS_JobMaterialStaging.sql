SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_JobMaterialStaging]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJMS_JobMaterialStaging](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_resv] [datetime] NOT NULL,
	[QuantityReserved] [float] NOT NULL,
	[kommen_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlJMS_Reservations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_JobMaterialStaging]') AND name = N'IX_JobMaterialStaging_ord__ref')
CREATE NONCLUSTERED INDEX [IX_JobMaterialStaging_ord__ref] ON [dbo].[stlJMS_JobMaterialStaging]
(
	[ord__ref] ASC
)
INCLUDE([art__ref],[dat_resv],[QuantityReserved],[kommen_2],[Deleted],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobMaterialStaging_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobMaterialStaging] ADD  CONSTRAINT [DF_stlJMS_JobMaterialStaging_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_Reservations_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobMaterialStaging] ADD  CONSTRAINT [DF_stlJMS_Reservations_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_Reservations_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobMaterialStaging] ADD  CONSTRAINT [DF_stlJMS_Reservations_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

