SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_HiddenColumns]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_HiddenColumns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrimaryKey] [int] NOT NULL,
	[TableName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ColumnName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_HiddenColumns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_HiddenColumns_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_HiddenColumns] ADD  CONSTRAINT [DF_stlCC_HiddenColumns_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_HiddenColumns_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_HiddenColumns] ADD  CONSTRAINT [DF_stlCC_HiddenColumns_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_HiddenColumns_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_HiddenColumns] ADD  CONSTRAINT [DF_stlCC_HiddenColumns_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

