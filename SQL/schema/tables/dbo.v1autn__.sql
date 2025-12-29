SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1autn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1autn__](
	[aut__bon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__bon] [int] NOT NULL,
	[aut__off] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__off] [int] NOT NULL,
	[aut__kpn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__kpn] [int] NOT NULL,
	[vlg__vrm] [int] NOT NULL,
	[vlg__dg_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1autni0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__aut__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__aut__bon]  DEFAULT ('') FOR [aut__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__vlg__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__vlg__bon]  DEFAULT ((0)) FOR [vlg__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__aut__off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__aut__off]  DEFAULT ('') FOR [aut__off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__vlg__off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__vlg__off]  DEFAULT ((0)) FOR [vlg__off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__aut__kpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__aut__kpn]  DEFAULT ('') FOR [aut__kpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__vlg__kpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__vlg__kpn]  DEFAULT ((0)) FOR [vlg__kpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__vlg__vrm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__vlg__vrm]  DEFAULT ((0)) FOR [vlg__vrm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1autn__vlg__dg_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1autn__] ADD  CONSTRAINT [DF_v1autn__vlg__dg_]  DEFAULT ((0)) FOR [vlg__dg_]
END

