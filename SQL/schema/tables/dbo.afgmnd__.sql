SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgmnd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgmnd__](
	[kjaar___] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afmn_id1] PRIMARY KEY CLUSTERED 
(
	[kjaar___] ASC,
	[maand___] ASC,
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__kjaar___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__kjaar___]  DEFAULT ('') FOR [kjaar___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__maand___]  DEFAULT ('') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__versiref]  DEFAULT ('001') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgmnd__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgmnd__] ADD  CONSTRAINT [DF_afgmnd__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

