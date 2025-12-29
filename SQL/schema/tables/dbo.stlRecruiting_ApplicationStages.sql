SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_ApplicationStages](
	[StageID] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[StageOrder] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_ApplicationStages] PRIMARY KEY CLUSTERED 
(
	[StageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStages_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStages] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStages_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__23A40EFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStages] ADD  CONSTRAINT [DF__stlRecrui__Creat__23A40EFA]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__24983333]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStages] ADD  CONSTRAINT [DF__stlRecrui__Creat__24983333]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStages_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStages] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStages_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStages_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStages] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStages_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

