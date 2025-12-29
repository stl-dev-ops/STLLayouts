SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klagr___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klagr___](
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[cde___ap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [ref_klgr] PRIMARY KEY CLUSTERED 
(
	[klgr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klagr___klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klagr___] ADD  CONSTRAINT [DF_klagr___klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klagr___klgr_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klagr___] ADD  CONSTRAINT [DF_klagr___klgr_oms]  DEFAULT ('') FOR [klgr_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klagr___cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klagr___] ADD  CONSTRAINT [DF_klagr___cde___ap]  DEFAULT ('') FOR [cde___ap]
END

