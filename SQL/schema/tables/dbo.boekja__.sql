SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boekja__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[boekja__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bgj__dat] [date] NOT NULL,
	[edj__dat] [date] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_bkj_] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_boekja__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[boekja__] ADD  CONSTRAINT [DF_boekja__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_boekja__bkj__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[boekja__] ADD  CONSTRAINT [DF_boekja__bkj__oms]  DEFAULT ('') FOR [bkj__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_boekja__bgj__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[boekja__] ADD  CONSTRAINT [DF_boekja__bgj__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bgj__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_boekja__edj__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[boekja__] ADD  CONSTRAINT [DF_boekja__edj__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [edj__dat]
END

