SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNB_NewBusiness]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlNB_NewBusiness](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlNB_NewBusinessStatusID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlNB_NewBusiness] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_StartDate]  DEFAULT ((1)) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNB_NewBusiness_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNB_NewBusiness] ADD  CONSTRAINT [DF_stlNB_NewBusiness_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

