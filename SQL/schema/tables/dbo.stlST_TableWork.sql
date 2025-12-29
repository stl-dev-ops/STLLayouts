SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_TableWork]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_TableWork](
	[stlST_TableWorkID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [int] NOT NULL,
	[ord__ref2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__2] [int] NOT NULL,
	[splices] [int] NOT NULL,
	[stlST_spliceTypeID] [int] NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[reason] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_TableWork] PRIMARY KEY CLUSTERED 
(
	[stlST_TableWorkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_volgnr__]  DEFAULT ((0)) FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_ord__ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_ord__ref2]  DEFAULT ('') FOR [ord__ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_sku__ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_sku__ref2]  DEFAULT ('') FOR [sku__ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_volgnr__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_volgnr__2]  DEFAULT ((0)) FOR [volgnr__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_splices]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_splices]  DEFAULT ((0)) FOR [splices]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_spliceTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_spliceTypeID]  DEFAULT ((0)) FOR [stlST_spliceTypeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_TableWork_reason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_TableWork] ADD  CONSTRAINT [DF_stlST_TableWork_reason]  DEFAULT ('') FOR [reason]
END

