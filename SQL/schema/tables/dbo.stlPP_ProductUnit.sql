SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_ProductUnit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_ProductUnit](
	[stlPP_ProductUnitID] [int] IDENTITY(1,1) NOT NULL,
	[productUnit] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPP_ProcedureUnit] PRIMARY KEY CLUSTERED 
(
	[stlPP_ProductUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureUnit_procedureUnit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProductUnit] ADD  CONSTRAINT [DF_stlPP_ProcedureUnit_procedureUnit]  DEFAULT ('') FOR [productUnit]
END

