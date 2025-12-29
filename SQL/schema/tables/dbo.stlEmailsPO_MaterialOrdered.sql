SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailsPO_MaterialOrdered]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailsPO_MaterialOrdered](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlEmailsPO_MaterialOrdered] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_art__ref]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPO_MaterialOrdered_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPO_MaterialOrdered] ADD  CONSTRAINT [DF_stlEmailsPO_MaterialOrdered_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

