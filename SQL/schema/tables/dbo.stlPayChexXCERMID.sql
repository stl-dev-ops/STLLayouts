SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPayChexXCERMID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPayChexXCERMID](
	[stlPayChexXCERMID] [int] IDENTITY(1,1) NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[empNo] [int] NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPayChexXCERM] PRIMARY KEY CLUSTERED 
(
	[stlPayChexXCERMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPayChexXCERM_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPayChexXCERMID] ADD  CONSTRAINT [DF_stlPayChexXCERM_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPayChexXCERM_empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPayChexXCERMID] ADD  CONSTRAINT [DF_stlPayChexXCERM_empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPayChexXCERMID_usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPayChexXCERMID] ADD  CONSTRAINT [DF_stlPayChexXCERMID_usernbr_]  DEFAULT ('') FOR [usernbr_]
END

