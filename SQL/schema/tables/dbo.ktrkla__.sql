SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ktrkla__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ktrkla__](
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ktrklai0] PRIMARY KEY CLUSTERED 
(
	[ktrk_ref] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ktrkla__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ktrkla__] ADD  CONSTRAINT [DF_ktrkla__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ktrkla__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ktrkla__] ADD  CONSTRAINT [DF_ktrkla__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

