SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlIQC_TestingNeeded]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlIQC_TestingNeeded](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[MaterialKeywordContains] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlIQC_TestingNeeded] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlIQC_TestingNeeded_lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlIQC_TestingNeeded] ADD  CONSTRAINT [DF_stlIQC_TestingNeeded_lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlIQC_TestingNeeded_MaterialKeywordContains]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlIQC_TestingNeeded] ADD  CONSTRAINT [DF_stlIQC_TestingNeeded_MaterialKeywordContains]  DEFAULT ('') FOR [MaterialKeywordContains]
END

