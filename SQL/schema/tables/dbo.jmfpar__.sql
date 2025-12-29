SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfpar__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfpar__](
	[jmf__dir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf__dir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[jmf__url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[jmf_port] [int] NOT NULL,
	[jmf__adr] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[sign_adr] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[web__url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfprurl] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[save_jmf] [int] NOT NULL,
	[pre___wp] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pre__akt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[pre___wn] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[devrefpp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srvrefhd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[njob_kla] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jmfpari0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jmf__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jmf__dir]  DEFAULT ('') FOR [jmf__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jdf__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jdf__dir]  DEFAULT ('') FOR [jdf__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jmf__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jmf__url]  DEFAULT ('') FOR [jmf__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jmf_port]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jmf_port]  DEFAULT ((0)) FOR [jmf_port]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jmf__adr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jmf__adr]  DEFAULT ('') FOR [jmf__adr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__sign_adr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__sign_adr]  DEFAULT ('') FOR [sign_adr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__web__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__web__url]  DEFAULT ('') FOR [web__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__jdfprurl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__jdfprurl]  DEFAULT ('') FOR [jdfprurl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__save_jmf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__save_jmf]  DEFAULT ((0)) FOR [save_jmf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__pre___wp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__pre___wp]  DEFAULT ('') FOR [pre___wp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__pre__akt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__pre__akt]  DEFAULT ('') FOR [pre__akt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__pre___wn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__pre___wn]  DEFAULT ('') FOR [pre___wn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__devrefpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__devrefpp]  DEFAULT ('') FOR [devrefpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__srvrefhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__srvrefhd]  DEFAULT ('') FOR [srvrefhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpar__njob_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpar__] ADD  CONSTRAINT [DF_jmfpar__njob_kla]  DEFAULT ('') FOR [njob_kla]
END

