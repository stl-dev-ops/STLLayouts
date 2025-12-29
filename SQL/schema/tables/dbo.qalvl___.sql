SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qalvl___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[qalvl___](
	[qalvlref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tag1_act] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tag1ctrl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[qa___std] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_grp__ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[accoord_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afginbox] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[delta__e] [float] NOT NULL,
	[tag2_act] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tag2ctrl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tag3_act] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tag3ctrl] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[ctrl_grd_change] [bit] NOT NULL,
 CONSTRAINT [qalvl_i0] PRIMARY KEY CLUSTERED 
(
	[qalvlref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___qalvlref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___qalvlref]  DEFAULT ('') FOR [qalvlref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag1_act]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag1_act]  DEFAULT ('') FOR [tag1_act]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag1ctrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag1ctrl]  DEFAULT ('') FOR [tag1ctrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___qa___std]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___qa___std]  DEFAULT ('') FOR [qa___std]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___grp__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___grp__ord]  DEFAULT ('') FOR [grp__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___gang_grp__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___gang_grp__ord]  DEFAULT ('') FOR [gang_grp__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___accoord_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___accoord_]  DEFAULT ('') FOR [accoord_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___lyn__ref_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___lyn__ref_vrpl]  DEFAULT ('') FOR [lyn__ref_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___afginbox]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___afginbox]  DEFAULT ('') FOR [afginbox]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___delta__e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___delta__e]  DEFAULT ((0)) FOR [delta__e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag2_act]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag2_act]  DEFAULT ('') FOR [tag2_act]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag2ctrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag2ctrl]  DEFAULT ('') FOR [tag2ctrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag3_act]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag3_act]  DEFAULT ('') FOR [tag3_act]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___tag3ctrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___tag3ctrl]  DEFAULT ('') FOR [tag3ctrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_qalvl___ctrl_grd_change]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[qalvl___] ADD  CONSTRAINT [DF_qalvl___ctrl_grd_change]  DEFAULT ((0)) FOR [ctrl_grd_change]
END

