SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlConsumptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlConsumptions](
	[ID] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[datum___] [date] NOT NULL,
	[aantal__] [float] NOT NULL,
	[FirstConsumption] [date] NULL,
	[LastConsumption] [date] NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[ProductDescription] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ProductGroupID] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[ProductGroup] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlConsumptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlConsumptions]') AND name = N'IX_stlConsumptions_datum_art__ref')
CREATE NONCLUSTERED INDEX [IX_stlConsumptions_datum_art__ref] ON [dbo].[stlConsumptions]
(
	[art__ref] ASC,
	[datum___] ASC,
	[kla__ref] ASC
)
INCLUDE([artc_ref],[omschr__],[aantal__],[FirstConsumption],[LastConsumption],[afg__ref],[ProductDescription],[ProductGroupID],[ProductGroup],[ord__ref],[kla__rpn],[soort___]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
