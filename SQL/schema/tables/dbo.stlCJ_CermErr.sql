SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_CermErr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_CermErr](
	[stlCJ_CermErrID] [int] IDENTITY(1,1) NOT NULL,
	[stlCJ_ProductID] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[passNo] [int] NOT NULL,
	[description] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCJ_CerrErr] PRIMARY KEY CLUSTERED 
(
	[stlCJ_CermErrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CerrErr_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CermErr] ADD  CONSTRAINT [DF_stlCJ_CerrErr_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CerrErr_passNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CermErr] ADD  CONSTRAINT [DF_stlCJ_CerrErr_passNo]  DEFAULT ((1)) FOR [passNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_CerrErr_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_CermErr] ADD  CONSTRAINT [DF_stlCJ_CerrErr_description]  DEFAULT ('') FOR [description]
END

