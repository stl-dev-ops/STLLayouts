SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hdivfr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hdivfr__](
	[doc__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[div__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[debcre__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hdivfri1] PRIMARY KEY CLUSTERED 
(
	[doc__ref] ASC,
	[arek_ref] ASC,
	[debcre__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__doc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__doc__ref]  DEFAULT ('') FOR [doc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__div__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__div__ref]  DEFAULT ('') FOR [div__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__debcre__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__debcre__]  DEFAULT ('') FOR [debcre__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfr__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfr__] ADD  CONSTRAINT [DF_hdivfr__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

