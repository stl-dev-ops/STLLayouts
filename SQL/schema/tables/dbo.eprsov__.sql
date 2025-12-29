SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprsov__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprsov__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ovl__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ovl__vlg] [int] NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprsovi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[ovl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsov__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsov__] ADD  CONSTRAINT [DF_eprsov__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsov__ovl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsov__] ADD  CONSTRAINT [DF_eprsov__ovl__ref]  DEFAULT ('') FOR [ovl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsov__ovl__vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsov__] ADD  CONSTRAINT [DF_eprsov__ovl__vlg]  DEFAULT ((0)) FOR [ovl__vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsov__etap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsov__] ADD  CONSTRAINT [DF_eprsov__etap_ref]  DEFAULT ('') FOR [etap_ref]
END

