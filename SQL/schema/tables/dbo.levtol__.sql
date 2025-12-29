SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levtol__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levtol__](
	[ltol_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ltol_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_ltol] PRIMARY KEY CLUSTERED 
(
	[ltol_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levtol__ltol_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levtol__] ADD  CONSTRAINT [DF_levtol__ltol_ref]  DEFAULT ('') FOR [ltol_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levtol__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levtol__] ADD  CONSTRAINT [DF_levtol__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levtol__ltol_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levtol__] ADD  CONSTRAINT [DF_levtol__ltol_rpn]  DEFAULT ('') FOR [ltol_rpn]
END

