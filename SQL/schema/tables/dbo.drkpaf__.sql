SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpaf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpaf__](
	[prs__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prsafref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toren_af] [int] NOT NULL,
	[drukunit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpafi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prsafref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__prsafref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__prsafref]  DEFAULT ('') FOR [prsafref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__toren_af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__toren_af]  DEFAULT ((1)) FOR [toren_af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpaf__drukunit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpaf__] ADD  CONSTRAINT [DF_drkpaf__drukunit]  DEFAULT ('N') FOR [drukunit]
END

