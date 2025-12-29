SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afdel___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afdel___](
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__om2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__kst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd_vprc] [float] NOT NULL,
	[usergrp_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afdel_i0] PRIMARY KEY CLUSTERED 
(
	[afd__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___afd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___afd__oms]  DEFAULT ('') FOR [afd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___afd__om2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___afd__om2]  DEFAULT ('') FOR [afd__om2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___afd__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___afd__kst]  DEFAULT ('2') FOR [afd__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___afd_vprc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___afd_vprc]  DEFAULT ((0)) FOR [afd_vprc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdel___usergrp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdel___] ADD  CONSTRAINT [DF_afdel___usergrp_]  DEFAULT ('') FOR [usergrp_]
END

