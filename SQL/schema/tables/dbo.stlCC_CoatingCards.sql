SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCards]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CoatingCards](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Face] [float] NULL,
	[Liner] [float] NULL,
	[AdhesiveTarget] [float] NULL,
	[Tolerance] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CoatingCardValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardValues_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCards] ADD  CONSTRAINT [DF_stlCC_CoatingCardValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardValues_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCards] ADD  CONSTRAINT [DF_stlCC_CoatingCardValues_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardValues_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCards] ADD  CONSTRAINT [DF_stlCC_CoatingCardValues_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardValues_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCards] ADD  CONSTRAINT [DF_stlCC_CoatingCardValues_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardValues_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCards] ADD  CONSTRAINT [DF_stlCC_CoatingCardValues_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

