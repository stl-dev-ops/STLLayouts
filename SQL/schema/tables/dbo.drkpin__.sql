SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpin__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpin__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prsinref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpini0] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prsinref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpin__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpin__] ADD  CONSTRAINT [DF_drkpin__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpin__prsinref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpin__] ADD  CONSTRAINT [DF_drkpin__prsinref]  DEFAULT ('') FOR [prsinref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpin__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpin__] ADD  CONSTRAINT [DF_drkpin__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpin__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpin__] ADD  CONSTRAINT [DF_drkpin__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpin__kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpin__] ADD  CONSTRAINT [DF_drkpin__kstd_ref]  DEFAULT ('') FOR [kstd_ref]
END

