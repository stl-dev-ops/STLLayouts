SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Notes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_Notes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlREWSPOOL_Notes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Notes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Notes] ADD  CONSTRAINT [DF_stlREWSPOOL_Notes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Notes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Notes] ADD  CONSTRAINT [DF_stlREWSPOOL_Notes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Notes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Notes] ADD  CONSTRAINT [DF_stlREWSPOOL_Notes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_Notes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Notes] ADD  CONSTRAINT [DF_stlREWSPOOL_Notes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

