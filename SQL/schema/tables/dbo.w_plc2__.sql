SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_plc2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_plc2__](
	[idf_plc2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[plg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plc2_id1] PRIMARY KEY CLUSTERED 
(
	[idf_plc2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__idf_plc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__idf_plc2]  DEFAULT ('') FOR [idf_plc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_plc2__plg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_plc2__] ADD  CONSTRAINT [DF_w_plc2__plg__ref]  DEFAULT ('') FOR [plg__ref]
END

