SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_vrbd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_vrbd__](
	[idf_vrbr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_vrbd_1] PRIMARY KEY CLUSTERED 
(
	[idf_vrbr] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbd__idf_vrbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbd__] ADD  CONSTRAINT [DF_w_vrbd__idf_vrbr]  DEFAULT ('') FOR [idf_vrbr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbd__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbd__] ADD  CONSTRAINT [DF_w_vrbd__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbd__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbd__] ADD  CONSTRAINT [DF_w_vrbd__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbd__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbd__] ADD  CONSTRAINT [DF_w_vrbd__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrbd__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrbd__] ADD  CONSTRAINT [DF_w_vrbd__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

