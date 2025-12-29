SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_LastJobInk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_LastJobInk](
	[stlJM_LastJobInkID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlJM_LastJobInk] PRIMARY KEY CLUSTERED 
(
	[stlJM_LastJobInkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_LastJobInk_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_LastJobInk] ADD  CONSTRAINT [DF_stlJM_LastJobInk_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_LastJobInk_dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_LastJobInk] ADD  CONSTRAINT [DF_stlJM_LastJobInk_dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_LastJobInk_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_LastJobInk] ADD  CONSTRAINT [DF_stlJM_LastJobInk_art__ref]  DEFAULT ('') FOR [art__ref]
END

