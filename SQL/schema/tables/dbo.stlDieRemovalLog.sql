SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDieRemovalLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDieRemovalLog](
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arthdref] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[RemovalDate] [date] NULL,
	[Operator_wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[ReasonID] [int] NULL,
	[Approval_wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_stlDieRemovalLog] PRIMARY KEY CLUSTERED 
(
	[stns_ref] ASC,
	[arthdref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDieRemovalLog_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDieRemovalLog] ADD  CONSTRAINT [DF_stlDieRemovalLog_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

