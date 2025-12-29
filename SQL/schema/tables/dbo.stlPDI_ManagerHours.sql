SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ManagerHours]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_ManagerHours](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[PdDate] [datetime] NOT NULL,
	[PdHours] [decimal](18, 2) NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_ManagerHours] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_Manager]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_Manager]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_PdDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_PdDate]  DEFAULT (getdate()) FOR [PdDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_PdHours]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_PdHours]  DEFAULT ((0)) FOR [PdHours]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ManagerHours_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ManagerHours] ADD  CONSTRAINT [DF_stlPDI_ManagerHours_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

