SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spoolJob]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spoolJob](
	[spoolJobID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[weightPer20K] [real] NULL,
	[upsize_ts] [timestamp] NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [aaaaaspoolJob_PK] PRIMARY KEY NONCLUSTERED 
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spoolJob]') AND name = N'jobID')
CREATE NONCLUSTERED INDEX [jobID] ON [dbo].[spoolJob]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spoolJob__weight__754E3E91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJob] ADD  DEFAULT ((0)) FOR [weightPer20K]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolJob_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJob] ADD  CONSTRAINT [DF_spoolJob_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

