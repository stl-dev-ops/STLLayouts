SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlGP_GrossProfit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlGP_GrossProfit](
	[EffectiveDateFirstDayOfMonth] [datetime] NOT NULL,
	[GrossProfit] [int] NOT NULL,
 CONSTRAINT [PK_stlNI_GrossProfit] PRIMARY KEY CLUSTERED 
(
	[EffectiveDateFirstDayOfMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlNI_GrossProfit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlGP_GrossProfit]'))
ALTER TABLE [dbo].[stlGP_GrossProfit]  WITH CHECK ADD  CONSTRAINT [CK_stlNI_GrossProfit] CHECK  ((datepart(day,[EffectiveDateFirstDayOfMonth])=(1)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlNI_GrossProfit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlGP_GrossProfit]'))
ALTER TABLE [dbo].[stlGP_GrossProfit] CHECK CONSTRAINT [CK_stlNI_GrossProfit]
