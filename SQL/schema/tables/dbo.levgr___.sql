SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levgr___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levgr___](
	[lvgr_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvgr_oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ref_lvgr] PRIMARY KEY CLUSTERED 
(
	[lvgr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levgr___lvgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levgr___] ADD  CONSTRAINT [DF_levgr___lvgr_ref]  DEFAULT ('') FOR [lvgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levgr___lvgr_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levgr___] ADD  CONSTRAINT [DF_levgr___lvgr_oms]  DEFAULT ('') FOR [lvgr_oms]
END

