SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_rsb1__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_rsb1__](
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etik_drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_rsb1i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__etik_drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__etik_drk]  DEFAULT ('') FOR [etik_drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb1__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb1__] ADD  CONSTRAINT [DF_w_rsb1__uur_____]  DEFAULT ('') FOR [uur_____]
END

