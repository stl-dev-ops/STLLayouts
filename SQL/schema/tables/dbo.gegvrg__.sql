SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gegvrg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gegvrg__](
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg_hint] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_typ] [int] NOT NULL,
	[antwtypd] [int] NOT NULL,
	[antw_len] [int] NOT NULL,
	[antw_dec] [int] NOT NULL,
	[antw_dsp] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg__tag] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg_groep] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tooncond] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[bi_sequence_nr] [int] NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_definition_time] [datetime2](3) NOT NULL,
	[last_edit_definition_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gegvrgi0] PRIMARY KEY CLUSTERED 
(
	[vrg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__vrg__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__vrg__oms]  DEFAULT ('') FOR [vrg__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__vrg_hint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__vrg_hint]  DEFAULT ('') FOR [vrg_hint]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__antw_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__antw_typ]  DEFAULT ((0)) FOR [antw_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__antwtypd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__antwtypd]  DEFAULT ((0)) FOR [antwtypd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__antw_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__antw_len]  DEFAULT ((0)) FOR [antw_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__antw_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__antw_dec]  DEFAULT ((0)) FOR [antw_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__antw_dsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__antw_dsp]  DEFAULT ('') FOR [antw_dsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__vrg__tag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__vrg__tag]  DEFAULT ('') FOR [vrg__tag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__vrg_groep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__vrg_groep]  DEFAULT ('') FOR [vrg_groep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__tooncond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__tooncond]  DEFAULT ('') FOR [tooncond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__bi_sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__bi_sequence_nr]  DEFAULT ((0)) FOR [bi_sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__last_edit_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__last_edit_definition_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__last_edit_definition_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [last_edit_definition_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gegvrg__last_edit_definition_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gegvrg__] ADD  CONSTRAINT [DF_gegvrg__last_edit_definition_usr]  DEFAULT ('') FOR [last_edit_definition_usr]
END

