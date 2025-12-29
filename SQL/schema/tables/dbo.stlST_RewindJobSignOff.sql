SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_RewindJobSignOff]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_RewindJobSignOff](
	[stlST_RewindJobSignOffID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[signedOff] [bit] NOT NULL,
	[insertDt] [datetime] NOT NULL,
	[lastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_stlST_RewindJobSignOff] PRIMARY KEY CLUSTERED 
(
	[stlST_RewindJobSignOffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindJobSignOff_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindJobSignOff] ADD  CONSTRAINT [DF_stlST_RewindJobSignOff_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindJobSignOff_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindJobSignOff] ADD  CONSTRAINT [DF_stlST_RewindJobSignOff_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindJobSignOff_signedOff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindJobSignOff] ADD  CONSTRAINT [DF_stlST_RewindJobSignOff_signedOff]  DEFAULT ((0)) FOR [signedOff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindJobSignOff_insertDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindJobSignOff] ADD  CONSTRAINT [DF_stlST_RewindJobSignOff_insertDt]  DEFAULT (getdate()) FOR [insertDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindJobSignOff_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindJobSignOff] ADD  CONSTRAINT [DF_stlST_RewindJobSignOff_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

