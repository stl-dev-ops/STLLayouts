SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMPI_MaterialPriceIncreases]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMPI_MaterialPriceIncreases](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[OldPrice] [float] NOT NULL,
	[NewPrice] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMPI_MaterialPriceIncreases] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_MaterialPriceIncreases_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_MaterialPriceIncreases] ADD  CONSTRAINT [DF_stlMPI_MaterialPriceIncreases_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_MaterialPriceIncreases_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_MaterialPriceIncreases] ADD  CONSTRAINT [DF_stlMPI_MaterialPriceIncreases_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_MaterialPriceIncreases_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_MaterialPriceIncreases] ADD  CONSTRAINT [DF_stlMPI_MaterialPriceIncreases_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_MaterialPriceIncreases_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_MaterialPriceIncreases] ADD  CONSTRAINT [DF_stlMPI_MaterialPriceIncreases_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_MaterialPriceIncreases_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_MaterialPriceIncreases] ADD  CONSTRAINT [DF_stlMPI_MaterialPriceIncreases_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

