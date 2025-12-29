SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm_deleted_plnkal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm_deleted_plnkal](
	[system_usr] [char](50) COLLATE Latin1_General_CI_AS NULL,
	[datum] [datetime] NULL,
	[trigby__] [char](3) COLLATE Latin1_General_CI_AS NULL,
	[jaar_ref] [char](6) COLLATE Latin1_General_CI_AS NULL,
	[mnd__ref] [char](6) COLLATE Latin1_General_CI_AS NULL,
	[dag___01] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___02] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___03] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___04] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___05] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___06] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___07] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___08] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___09] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___10] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___11] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___12] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___13] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___14] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___15] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___16] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___17] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___18] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___19] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___20] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___21] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___22] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___23] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___24] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___25] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___26] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___27] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___28] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___29] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___30] [char](1) COLLATE Latin1_General_CI_AS NULL,
	[dag___31] [char](1) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
END
