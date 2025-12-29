SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4pkg___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4pkg___](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pkg_definition_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[quantity] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4pkg_i0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sequence_nr] ASC,
	[pkg_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pkg___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pkg___] ADD  CONSTRAINT [DF_v4pkg___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pkg___pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pkg___] ADD  CONSTRAINT [DF_v4pkg___pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pkg___sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pkg___] ADD  CONSTRAINT [DF_v4pkg___sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pkg___quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pkg___] ADD  CONSTRAINT [DF_v4pkg___quantity]  DEFAULT ((0)) FOR [quantity]
END

