SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[smple1__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[smple1__](
	[smpl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[smpl_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [smple1i0] PRIMARY KEY CLUSTERED 
(
	[smpl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple1__smpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple1__] ADD  CONSTRAINT [DF_smple1__smpl_ref]  DEFAULT ('') FOR [smpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple1__smpl_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple1__] ADD  CONSTRAINT [DF_smple1__smpl_oms]  DEFAULT ('') FOR [smpl_oms]
END

