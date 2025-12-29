SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[land____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[land____](
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_eeg] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[binnland] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_dien] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_stra] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_wijk] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_land] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_stad] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_coun] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_stat] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_lnd_] PRIMARY KEY CLUSTERED 
(
	[land_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____stx_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____stx_beh_]  DEFAULT ('') FOR [stx_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____btw__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____btw__srt]  DEFAULT ('') FOR [btw__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____land_eeg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____land_eeg]  DEFAULT ('') FOR [land_eeg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____binnland]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____binnland]  DEFAULT ('') FOR [binnland]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_dien]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_dien]  DEFAULT ('') FOR [oms_dien]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_stra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_stra]  DEFAULT ('') FOR [oms_stra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_wijk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_wijk]  DEFAULT ('') FOR [oms_wijk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_land]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_land]  DEFAULT ('') FOR [oms_land]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_stad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_stad]  DEFAULT ('') FOR [oms_stad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_coun]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_coun]  DEFAULT ('') FOR [oms_coun]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____oms_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____oms_stat]  DEFAULT ('') FOR [oms_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_land____cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[land____] ADD  CONSTRAINT [DF_land____cde___ap]  DEFAULT ('') FOR [cde___ap]
END

