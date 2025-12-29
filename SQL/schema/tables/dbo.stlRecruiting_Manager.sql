SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Manager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Manager](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Manager_stlRecruiting_Manager]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Manager]'))
ALTER TABLE [dbo].[stlRecruiting_Manager]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Manager_stlRecruiting_Manager] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[stlRecruiting_Manager] ([ManagerID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Manager_stlRecruiting_Manager]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Manager]'))
ALTER TABLE [dbo].[stlRecruiting_Manager] CHECK CONSTRAINT [FK_stlRecruiting_Manager_stlRecruiting_Manager]
