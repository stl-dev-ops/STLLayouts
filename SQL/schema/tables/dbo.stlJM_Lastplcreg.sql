SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_Lastplcreg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_Lastplcreg](
	[stlJM_LastplcregID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] NOT NULL,
 CONSTRAINT [PK_stlJM_Lastplcreg] PRIMARY KEY CLUSTERED 
(
	[stlJM_LastplcregID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Lastplcreg_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Lastplcreg] ADD  CONSTRAINT [DF_stlJM_Lastplcreg_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Lastplcreg_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Lastplcreg] ADD  CONSTRAINT [DF_stlJM_Lastplcreg_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Lastplcreg_rowid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Lastplcreg] ADD  CONSTRAINT [DF_stlJM_Lastplcreg_rowid]  DEFAULT ((0)) FOR [rowid]
END

