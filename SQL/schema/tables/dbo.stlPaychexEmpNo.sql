SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexEmpNo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexEmpNo](
	[stlPaychexEmpNoID] [int] IDENTITY(1,1) NOT NULL,
	[lastName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[empNo] [int] NOT NULL,
	[inactive] [bit] NOT NULL,
	[incentiveDt] [datetime] NOT NULL,
	[MostRecentHireDate] [datetime] NOT NULL,
	[CardNumber] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPaychexEmpNo] PRIMARY KEY CLUSTERED 
(
	[stlPaychexEmpNoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_lastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_lastName]  DEFAULT ('') FOR [lastName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_firstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_firstName]  DEFAULT ('') FOR [firstName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_active]  DEFAULT ((0)) FOR [inactive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_incentiveDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_incentiveDt]  DEFAULT (dateadd(year,(1),getdate())) FOR [incentiveDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_MostRecentHireDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_MostRecentHireDate]  DEFAULT (getdate()) FOR [MostRecentHireDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexEmpNo_CardNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexEmpNo] ADD  CONSTRAINT [DF_stlPaychexEmpNo_CardNumber]  DEFAULT ('') FOR [CardNumber]
END

