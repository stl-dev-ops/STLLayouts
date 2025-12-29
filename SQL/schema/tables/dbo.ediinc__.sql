SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ediinc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ediinc__](
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[next_nbr] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ediinci0] PRIMARY KEY CLUSTERED 
(
	[edi__ref] ASC,
	[type] ASC,
	[det__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ediinc__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ediinc__] ADD  CONSTRAINT [DF_ediinc__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ediinc__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ediinc__] ADD  CONSTRAINT [DF_ediinc__type]  DEFAULT ('') FOR [type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ediinc__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ediinc__] ADD  CONSTRAINT [DF_ediinc__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ediinc__next_nbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ediinc__] ADD  CONSTRAINT [DF_ediinc__next_nbr]  DEFAULT ((0)) FOR [next_nbr]
END

