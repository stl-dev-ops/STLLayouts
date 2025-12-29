SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMPI_IncorrectPriceResolutions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMPI_IncorrectPriceResolutions](
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[Resolved] [tinyint] NOT NULL,
	[ResolutionNotes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMPI_IncorrectPriceResolutions_1] PRIMARY KEY CLUSTERED 
(
	[grbonref] ASC,
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_IncorrectPriceResolutions_Resolved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_IncorrectPriceResolutions] ADD  CONSTRAINT [DF_stlMPI_IncorrectPriceResolutions_Resolved]  DEFAULT ((0)) FOR [Resolved]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMPI_IncorrectPriceResolutions_Resolution]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMPI_IncorrectPriceResolutions] ADD  CONSTRAINT [DF_stlMPI_IncorrectPriceResolutions_Resolution]  DEFAULT ('') FOR [ResolutionNotes]
END

