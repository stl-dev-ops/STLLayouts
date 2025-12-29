SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_event_hooks__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_event_hooks__](
	[domain__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[hook____] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_ref] [int] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cerm8_event_hooksi0] PRIMARY KEY CLUSTERED 
(
	[domain__] ASC,
	[hook____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_event_hooks__domain__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_event_hooks__] ADD  CONSTRAINT [DF_cerm8_event_hooks__domain__]  DEFAULT ('') FOR [domain__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_event_hooks__hook____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_event_hooks__] ADD  CONSTRAINT [DF_cerm8_event_hooks__hook____]  DEFAULT ('') FOR [hook____]
END

