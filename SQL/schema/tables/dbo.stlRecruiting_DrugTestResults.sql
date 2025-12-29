SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_DrugTestResults]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_DrugTestResults](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[Result] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[ResultOrder] [int] NOT NULL,
 CONSTRAINT [PK_stlReqruiting_DrugTestResults] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_DrugTestResults_ResultOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_DrugTestResults] ADD  CONSTRAINT [DF_stlRecruiting_DrugTestResults_ResultOrder]  DEFAULT ((0)) FOR [ResultOrder]
END

