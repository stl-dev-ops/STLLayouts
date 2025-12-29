SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCLK_Clocking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCLK_Clocking](
	[stlCLK_ClockingID] [int] IDENTITY(1,1) NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_name] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[startDT] [datetime] NOT NULL,
	[stopDt] [datetime] NULL,
	[cardNumber] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCLK_Clocking] PRIMARY KEY CLUSTERED 
(
	[stlCLK_ClockingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_wp_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_wp_name]  DEFAULT ('') FOR [wp_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_akt_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_akt_name]  DEFAULT ('') FOR [akt_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_startDT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_startDT]  DEFAULT (getdate()) FOR [startDT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_cardNumber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_cardNumber]  DEFAULT ('') FOR [cardNumber]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_wn_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_wn_name]  DEFAULT ('') FOR [wn_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCLK_Clocking_pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCLK_Clocking] ADD  CONSTRAINT [DF_stlCLK_Clocking_pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

