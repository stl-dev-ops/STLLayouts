SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autvoo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autvoo__](
	[aut_drpr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_drpr] [int] NOT NULL,
	[aut_stns] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_stns] [int] NOT NULL,
	[vlgarthd] [int] NOT NULL,
	[aut__eti] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__eti] [int] NOT NULL,
	[aut_drkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_drkp] [int] NOT NULL,
	[aut__pms] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__pms] [int] NOT NULL,
	[vlgshape] [int] NOT NULL,
	[vlg_etap] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autvooi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__aut_drpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__aut_drpr]  DEFAULT ('') FOR [aut_drpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg_drpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg_drpr]  DEFAULT ((0)) FOR [vlg_drpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__aut_stns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__aut_stns]  DEFAULT ('') FOR [aut_stns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg_stns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg_stns]  DEFAULT ((0)) FOR [vlg_stns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlgarthd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlgarthd]  DEFAULT ((0)) FOR [vlgarthd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__aut__eti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__aut__eti]  DEFAULT ('') FOR [aut__eti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg__eti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg__eti]  DEFAULT ((0)) FOR [vlg__eti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__aut_drkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__aut_drkp]  DEFAULT ('') FOR [aut_drkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg_drkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg_drkp]  DEFAULT ((0)) FOR [vlg_drkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__aut__pms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__aut__pms]  DEFAULT ('') FOR [aut__pms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg__pms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg__pms]  DEFAULT ((0)) FOR [vlg__pms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlgshape]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlgshape]  DEFAULT ((0)) FOR [vlgshape]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autvoo__vlg_etap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autvoo__] ADD  CONSTRAINT [DF_autvoo__vlg_etap]  DEFAULT ('') FOR [vlg_etap]
END

