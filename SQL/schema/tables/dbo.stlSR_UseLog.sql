SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_UseLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_UseLog](
	[stlSR_UseLogID] [int] IDENTITY(1,1) NOT NULL,
	[stlSR_SiliconeRecipeID] [int] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[logDt] [datetime] NOT NULL,
	[userName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[wtLb] [numeric](7, 4) NOT NULL,
	[mixedFor1Minute] [bit] NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSR_UseLog] PRIMARY KEY CLUSTERED 
(
	[stlSR_UseLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_stlSR_SiliconeRecipeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_stlSR_SiliconeRecipeID]  DEFAULT ((0)) FOR [stlSR_SiliconeRecipeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_logDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_logDt]  DEFAULT (getdate()) FOR [logDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_userName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_userName]  DEFAULT ('') FOR [userName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_wtKg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_wtKg]  DEFAULT ((0.0)) FOR [wtLb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_mixedFor1Minute]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_mixedFor1Minute]  DEFAULT ((0)) FOR [mixedFor1Minute]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLog_ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLog] ADD  CONSTRAINT [DF_stlSR_UseLog_ink__ref]  DEFAULT ('') FOR [ink__ref]
END

