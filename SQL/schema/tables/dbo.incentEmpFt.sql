SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incentEmpFt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incentEmpFt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wn___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[department] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[empGdFt] [float] NULL,
	[empTotFt] [float] NULL,
	[jobTotGdFt] [float] NULL,
	[percent_] [float] NULL,
	[locked] [bit] NULL,
 CONSTRAINT [PK_incentEmpFt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentEmpFt_empGdFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentEmpFt] ADD  CONSTRAINT [DF_incentEmpFt_empGdFt]  DEFAULT ((0)) FOR [empGdFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentEmpFt_empTotFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentEmpFt] ADD  CONSTRAINT [DF_incentEmpFt_empTotFt]  DEFAULT ((0)) FOR [empTotFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentEmpFt_jobTotGdFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentEmpFt] ADD  CONSTRAINT [DF_incentEmpFt_jobTotGdFt]  DEFAULT ((0)) FOR [jobTotGdFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentEmpFt_percent_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentEmpFt] ADD  CONSTRAINT [DF_incentEmpFt_percent_]  DEFAULT ((0)) FOR [percent_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentEmpFt_locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentEmpFt] ADD  CONSTRAINT [DF_incentEmpFt_locked]  DEFAULT ((0)) FOR [locked]
END

