SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_ProcedureMaterialPer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_ProcedureMaterialPer](
	[stlPP_ProcedureMaterialPerID] [int] IDENTITY(1,1) NOT NULL,
	[procedureMaterialPer] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPP_ProcedureMaterialPer] PRIMARY KEY CLUSTERED 
(
	[stlPP_ProcedureMaterialPerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_ProcedureMaterialPer_procedureMaterialPer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_ProcedureMaterialPer] ADD  CONSTRAINT [DF_stlPP_ProcedureMaterialPer_procedureMaterialPer]  DEFAULT ('') FOR [procedureMaterialPer]
END

