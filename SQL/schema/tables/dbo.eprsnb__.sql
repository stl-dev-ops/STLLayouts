SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprsnb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprsnb__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlafg_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[was____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___in] [float] NOT NULL,
	[stlafgin] [float] NOT NULL,
	[ins__prc] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprsnbi0] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[ink__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__stlafg_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__stlafg_t]  DEFAULT ('') FOR [stlafg_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__was____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__was____t]  DEFAULT ('') FOR [was____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__stlafgin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__stlafgin]  DEFAULT ((0)) FOR [stlafgin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsnb__ins__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsnb__] ADD  CONSTRAINT [DF_eprsnb__ins__prc]  DEFAULT ((0)) FOR [ins__prc]
END

