SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3vrsd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3vrsd__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[antposes] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i1_vrsd3] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC,
	[vrs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3vrsd__]') AND name = N'i2_vrsd3')
CREATE NONCLUSTERED INDEX [i2_vrsd3] ON [dbo].[v3vrsd__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrsd__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrsd__] ADD  CONSTRAINT [DF_v3vrsd__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrsd__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrsd__] ADD  CONSTRAINT [DF_v3vrsd__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrsd__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrsd__] ADD  CONSTRAINT [DF_v3vrsd__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrsd__antposes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrsd__] ADD  CONSTRAINT [DF_v3vrsd__antposes]  DEFAULT ((0)) FOR [antposes]
END

