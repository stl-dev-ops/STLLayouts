SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCM_CSREmail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCM_CSREmail](
	[stlCM_CSREmailID] [int] IDENTITY(1,1) NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[lastSentDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlCM_CSREmail] PRIMARY KEY CLUSTERED 
(
	[stlCM_CSREmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCM_CSREmail_lastSentDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCM_CSREmail] ADD  CONSTRAINT [DF_stlCM_CSREmail_lastSentDt]  DEFAULT (getdate()) FOR [lastSentDt]
END

