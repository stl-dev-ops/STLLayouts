SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfdev__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfdev__](
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[deviceid] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[descname] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[mod_name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[frndname] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prnttype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__prf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_prf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_kdg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_rty] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_plc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rty__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awz__atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eventtst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eventpln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb__plt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb_misc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jmfdevi1] PRIMARY KEY CLUSTERED 
(
	[dev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__descname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__descname]  DEFAULT ('') FOR [descname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__mod_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__mod_name]  DEFAULT ('') FOR [mod_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__frndname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__frndname]  DEFAULT ('') FOR [frndname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__prnttype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__prnttype]  DEFAULT ('0') FOR [prnttype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__res__prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__res__prf]  DEFAULT ('C') FOR [res__prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__res__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__res__plt]  DEFAULT ('C') FOR [res__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__res__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__res__tst]  DEFAULT ('C') FOR [res__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_prf]  DEFAULT ('C') FOR [stat_prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_plt]  DEFAULT ('C') FOR [stat_plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_kdg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_kdg]  DEFAULT ('C') FOR [stat_kdg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_rty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_rty]  DEFAULT ('C') FOR [stat_rty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_pln]  DEFAULT ('C') FOR [stat_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__stat_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__stat_plc]  DEFAULT ('C') FOR [stat_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__rty__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__rty__typ]  DEFAULT ('C') FOR [rty__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__awz__atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__awz__atl]  DEFAULT ('C') FOR [awz__atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__eventtst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__eventtst]  DEFAULT ('C') FOR [eventtst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__eventpln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__eventpln]  DEFAULT ('C') FOR [eventpln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__vrb__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__vrb__plt]  DEFAULT ('C') FOR [vrb__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfdev__vrb_misc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfdev__] ADD  CONSTRAINT [DF_jmfdev__vrb_misc]  DEFAULT ('C') FOR [vrb_misc]
END

