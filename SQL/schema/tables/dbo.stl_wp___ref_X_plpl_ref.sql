SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_wp___ref_X_plpl_ref]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_wp___ref_X_plpl_ref](
	[stl_wp___ref_X_plpl_refID] [int] IDENTITY(1,1) NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stl_wp___ref_X_plpl_ref] PRIMARY KEY CLUSTERED 
(
	[stl_wp___ref_X_plpl_refID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_wp___ref_X_plpl_ref_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_wp___ref_X_plpl_ref] ADD  CONSTRAINT [DF_stl_wp___ref_X_plpl_ref_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_wp___ref_X_plpl_ref_plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_wp___ref_X_plpl_ref] ADD  CONSTRAINT [DF_stl_wp___ref_X_plpl_ref_plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

