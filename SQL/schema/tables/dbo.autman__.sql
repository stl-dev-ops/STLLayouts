SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autman__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autman__](
	[bdgt_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut_lown] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_lown] [int] NOT NULL,
	[bkj_kj__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[herrknv6] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autmani0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__bdgt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__bdgt_ref]  DEFAULT ('') FOR [bdgt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__maand___]  DEFAULT ('') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__aut_lown]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__aut_lown]  DEFAULT ('') FOR [aut_lown]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__vlg_lown]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__vlg_lown]  DEFAULT ((0)) FOR [vlg_lown]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__bkj_kj__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__bkj_kj__]  DEFAULT ('') FOR [bkj_kj__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autman__herrknv6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autman__] ADD  CONSTRAINT [DF_autman__herrknv6]  DEFAULT ((0)) FOR [herrknv6]
END

