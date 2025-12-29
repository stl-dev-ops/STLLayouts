SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budgwp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budgwp__](
	[bdgt_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tbet_uur] [int] NOT NULL,
	[vkpb_uur] [int] NOT NULL,
	[brutloon] [float] NOT NULL,
	[ploegref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[loonkost] [float] NOT NULL,
	[vvwaarde] [float] NOT NULL,
	[afschr__] [float] NOT NULL,
	[rente___] [float] NOT NULL,
	[energie_] [float] NOT NULL,
	[herstel_] [float] NOT NULL,
	[machkost] [float] NOT NULL,
	[tot_kost] [float] NOT NULL,
	[overkost] [float] NOT NULL,
	[vkp_prys] [float] NOT NULL,
	[prodkap1] [float] NOT NULL,
	[prodkap2] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budwpid1] PRIMARY KEY CLUSTERED 
(
	[bdgt_ref] ASC,
	[wp___ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__bdgt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__bdgt_ref]  DEFAULT ('') FOR [bdgt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__tbet_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__tbet_uur]  DEFAULT ((0)) FOR [tbet_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__vkpb_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__vkpb_uur]  DEFAULT ((0)) FOR [vkpb_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__brutloon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__brutloon]  DEFAULT ((0)) FOR [brutloon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__ploegref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__ploegref]  DEFAULT ('') FOR [ploegref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__loonkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__loonkost]  DEFAULT ((0)) FOR [loonkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__vvwaarde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__vvwaarde]  DEFAULT ((0)) FOR [vvwaarde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__afschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__afschr__]  DEFAULT ((0)) FOR [afschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__rente___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__rente___]  DEFAULT ((0)) FOR [rente___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__energie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__energie_]  DEFAULT ((0)) FOR [energie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__herstel_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__herstel_]  DEFAULT ((0)) FOR [herstel_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__machkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__machkost]  DEFAULT ((0)) FOR [machkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__tot_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__tot_kost]  DEFAULT ((0)) FOR [tot_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__overkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__overkost]  DEFAULT ((0)) FOR [overkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__vkp_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__vkp_prys]  DEFAULT ((0)) FOR [vkp_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__prodkap1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__prodkap1]  DEFAULT ((0)) FOR [prodkap1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budgwp__prodkap2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budgwp__] ADD  CONSTRAINT [DF_budgwp__prodkap2]  DEFAULT ((0)) FOR [prodkap2]
END

