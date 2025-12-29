SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spooler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spooler](
	[spoolerID] [int] IDENTITY(1,1) NOT NULL,
	[spooler] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[capacity] [smallint] NULL,
	[tmstamp] [timestamp] NULL,
 CONSTRAINT [aaaaaspooler_PK] PRIMARY KEY NONCLUSTERED 
(
	[spoolerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spooler__capacit__7A12F3AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spooler] ADD  DEFAULT ((0)) FOR [capacity]
END

