SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cad_output__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cad_output__](
	[output_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [bit] NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cad_outputi0] PRIMARY KEY CLUSTERED 
(
	[output_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__output_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__output_ref]  DEFAULT ('') FOR [output_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__soort___]  DEFAULT ('1') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__filename]  DEFAULT ('') FOR [filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__default_]  DEFAULT ((0)) FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cad_output__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cad_output__] ADD  CONSTRAINT [DF_cad_output__geblokk_]  DEFAULT ((0)) FOR [geblokk_]
END

