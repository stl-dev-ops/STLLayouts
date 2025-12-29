SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[smple2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[smple2__](
	[smpl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[smpldref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[staffel_] [int] NOT NULL,
	[smpl_ant] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [smple2i0] PRIMARY KEY CLUSTERED 
(
	[smpl_ref] ASC,
	[smpldref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple2__smpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple2__] ADD  CONSTRAINT [DF_smple2__smpl_ref]  DEFAULT ('') FOR [smpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple2__smpldref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple2__] ADD  CONSTRAINT [DF_smple2__smpldref]  DEFAULT ('') FOR [smpldref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple2__staffel_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple2__] ADD  CONSTRAINT [DF_smple2__staffel_]  DEFAULT ((0)) FOR [staffel_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_smple2__smpl_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[smple2__] ADD  CONSTRAINT [DF_smple2__smpl_ant]  DEFAULT ((0)) FOR [smpl_ant]
END

