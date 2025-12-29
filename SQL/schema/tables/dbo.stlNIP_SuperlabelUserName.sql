SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_SuperlabelUserName]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlNIP_SuperlabelUserName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[SUPERLABEL_UserName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlNIP_empNoSUPERLABEL_UserName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_SuperlabelUserName]') AND name = N'IX_stlNIP_empNoSUPERLABEL_UserName')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlNIP_empNoSUPERLABEL_UserName] ON [dbo].[stlNIP_SuperlabelUserName]
(
	[empNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_SuperlabelUserName]') AND name = N'IX_stlNIP_empNoSUPERLABEL_UserName_1')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlNIP_empNoSUPERLABEL_UserName_1] ON [dbo].[stlNIP_SuperlabelUserName]
(
	[SUPERLABEL_UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_SuperlabelUserName_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_SuperlabelUserName] ADD  CONSTRAINT [DF_stlNIP_SuperlabelUserName_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_empNoSUPERLABEL_UserName_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_SuperlabelUserName] ADD  CONSTRAINT [DF_stlNIP_empNoSUPERLABEL_UserName_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_empNoSUPERLABEL_UserName_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_SuperlabelUserName] ADD  CONSTRAINT [DF_stlNIP_empNoSUPERLABEL_UserName_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_empNoSUPERLABEL_UserName_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_SuperlabelUserName] ADD  CONSTRAINT [DF_stlNIP_empNoSUPERLABEL_UserName_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_empNoSUPERLABEL_UserName_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_SuperlabelUserName] ADD  CONSTRAINT [DF_stlNIP_empNoSUPERLABEL_UserName_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

