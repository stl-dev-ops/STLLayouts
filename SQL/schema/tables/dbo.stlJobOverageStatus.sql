SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJobOverageStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJobOverageStatus](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[OverageStatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_stlOverageStatus] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlJobOverageStatus_stlOverageStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlJobOverageStatus]'))
ALTER TABLE [dbo].[stlJobOverageStatus]  WITH CHECK ADD  CONSTRAINT [FK_stlJobOverageStatus_stlOverageStatus] FOREIGN KEY([OverageStatusID])
REFERENCES [dbo].[stlOverageStatus] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlJobOverageStatus_stlOverageStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlJobOverageStatus]'))
ALTER TABLE [dbo].[stlJobOverageStatus] CHECK CONSTRAINT [FK_stlJobOverageStatus_stlOverageStatus]
