SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kkl___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kkl___](
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr___nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_v__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[r_of_vnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pms__num] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exstel__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[waskateg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpc] [int] NOT NULL,
	[ant_mont] [int] NOT NULL,
	[ant_pltn] [int] NOT NULL,
	[bedruk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedruknr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkrgkpe] [float] NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kkl_i0] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC,
	[klr___nr] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kkl___]') AND name = N'v2kkl_i1')
CREATE NONCLUSTERED INDEX [v2kkl_i1] ON [dbo].[v2kkl___]
(
	[kpn__ref] ASC,
	[r_of_v__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___klr___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___klr___nr]  DEFAULT ('') FOR [klr___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___r_of_v__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___r_of_v__]  DEFAULT ('') FOR [r_of_v__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___r_of_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___r_of_vnr]  DEFAULT ('') FOR [r_of_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___ink__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___ink__srt]  DEFAULT ('') FOR [ink__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___pms__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___pms__num]  DEFAULT ('') FOR [pms__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___exstel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___exstel__]  DEFAULT ('') FOR [exstel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___waskateg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___waskateg]  DEFAULT ('') FOR [waskateg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___inkvrbpc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___inkvrbpc]  DEFAULT ((0)) FOR [inkvrbpc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___ant_mont]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___ant_mont]  DEFAULT ((0)) FOR [ant_mont]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___ant_pltn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___ant_pltn]  DEFAULT ((0)) FOR [ant_pltn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___bedruk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___bedruk__]  DEFAULT ('') FOR [bedruk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___bedruknr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___bedruknr]  DEFAULT ('') FOR [bedruknr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___inkrgkpe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___inkrgkpe]  DEFAULT ((0)) FOR [inkrgkpe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkl___komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkl___] ADD  CONSTRAINT [DF_v2kkl___komment1]  DEFAULT ('') FOR [komment1]
END

