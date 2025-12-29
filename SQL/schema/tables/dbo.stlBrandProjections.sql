SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBrandProjections]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBrandProjections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[YearID] [int] NOT NULL,
	[ProjectedLow] [money] NULL,
	[ProjectedHigh] [money] NULL,
 CONSTRAINT [PK_stlBrandProjections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlBrandProjections]') AND name = N'IX_stlBrandProjections_BrandYear')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlBrandProjections_BrandYear] ON [dbo].[stlBrandProjections]
(
	[prfm_ref] ASC,
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[BrandProjections_YearID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBrandProjections]'))
ALTER TABLE [dbo].[stlBrandProjections]  WITH CHECK ADD  CONSTRAINT [BrandProjections_YearID_Constraint] CHECK  (([YearID]>=(2010) AND [YearID]<=(2050)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[BrandProjections_YearID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBrandProjections]'))
ALTER TABLE [dbo].[stlBrandProjections] CHECK CONSTRAINT [BrandProjections_YearID_Constraint]
