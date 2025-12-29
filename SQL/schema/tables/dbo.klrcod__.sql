SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klrcod__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klrcod__](
	[klcodref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[antklr__] [int] NOT NULL,
	[ink1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp1] [int] NOT NULL,
	[ink2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp2] [int] NOT NULL,
	[ink3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp3] [int] NOT NULL,
	[ink4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp4] [int] NOT NULL,
	[ink5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp5] [int] NOT NULL,
	[ink6_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp6] [int] NOT NULL,
	[ink7_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp7] [int] NOT NULL,
	[ink8_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp8] [int] NOT NULL,
	[ink9_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbp9] [int] NOT NULL,
	[ink10ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb10] [int] NOT NULL,
	[ink11ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb11] [int] NOT NULL,
	[ink12ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb12] [int] NOT NULL,
	[ink13ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb13] [int] NOT NULL,
	[ink14ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb14] [int] NOT NULL,
	[ink15ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb15] [int] NOT NULL,
	[ink16ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrb16] [int] NOT NULL,
	[aantsrt0] [int] NOT NULL,
	[aantsrt1] [int] NOT NULL,
	[aantsrt2] [int] NOT NULL,
	[aantsrt3] [int] NOT NULL,
	[aantsrt4] [int] NOT NULL,
	[aantsrt5] [int] NOT NULL,
	[aantsrt6] [int] NOT NULL,
	[aantsrt7] [int] NOT NULL,
	[taal___1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[plano___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[label___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfqonw4l] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[drg_nr_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr10] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr14] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr15] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_nr16] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layer_nr_1] [int] NOT NULL,
	[layer_nr_2] [int] NOT NULL,
	[layer_nr_3] [int] NOT NULL,
	[layer_nr_4] [int] NOT NULL,
	[layer_nr_5] [int] NOT NULL,
	[layer_nr_6] [int] NOT NULL,
	[layer_nr_7] [int] NOT NULL,
	[layer_nr_8] [int] NOT NULL,
	[layer_nr_9] [int] NOT NULL,
	[layer_nr10] [int] NOT NULL,
	[layer_nr11] [int] NOT NULL,
	[layer_nr12] [int] NOT NULL,
	[layer_nr13] [int] NOT NULL,
	[layer_nr14] [int] NOT NULL,
	[layer_nr15] [int] NOT NULL,
	[layer_nr16] [int] NOT NULL,
 CONSTRAINT [klrcodi1] PRIMARY KEY CLUSTERED 
(
	[klcodref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__klcodref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__klcodref]  DEFAULT ('') FOR [klcodref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__antklr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__antklr__]  DEFAULT ((0)) FOR [antklr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink1_ref]  DEFAULT ('') FOR [ink1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp1]  DEFAULT ((0)) FOR [inkvrbp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink2_ref]  DEFAULT ('') FOR [ink2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp2]  DEFAULT ((0)) FOR [inkvrbp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink3_ref]  DEFAULT ('') FOR [ink3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp3]  DEFAULT ((0)) FOR [inkvrbp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink4_ref]  DEFAULT ('') FOR [ink4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp4]  DEFAULT ((0)) FOR [inkvrbp4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink5_ref]  DEFAULT ('') FOR [ink5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp5]  DEFAULT ((0)) FOR [inkvrbp5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink6_ref]  DEFAULT ('') FOR [ink6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp6]  DEFAULT ((0)) FOR [inkvrbp6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink7_ref]  DEFAULT ('') FOR [ink7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp7]  DEFAULT ((0)) FOR [inkvrbp7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink8_ref]  DEFAULT ('') FOR [ink8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp8]  DEFAULT ((0)) FOR [inkvrbp8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink9_ref]  DEFAULT ('') FOR [ink9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrbp9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrbp9]  DEFAULT ((0)) FOR [inkvrbp9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink10ref]  DEFAULT ('') FOR [ink10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb10]  DEFAULT ((0)) FOR [inkvrb10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink11ref]  DEFAULT ('') FOR [ink11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb11]  DEFAULT ((0)) FOR [inkvrb11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink12ref]  DEFAULT ('') FOR [ink12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb12]  DEFAULT ((0)) FOR [inkvrb12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink13ref]  DEFAULT ('') FOR [ink13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb13]  DEFAULT ((0)) FOR [inkvrb13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink14ref]  DEFAULT ('') FOR [ink14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb14]  DEFAULT ((0)) FOR [inkvrb14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink15ref]  DEFAULT ('') FOR [ink15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb15]  DEFAULT ((0)) FOR [inkvrb15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__ink16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__ink16ref]  DEFAULT ('') FOR [ink16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__inkvrb16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__inkvrb16]  DEFAULT ((0)) FOR [inkvrb16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt0]  DEFAULT ((0)) FOR [aantsrt0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt1]  DEFAULT ((0)) FOR [aantsrt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt2]  DEFAULT ((0)) FOR [aantsrt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt3]  DEFAULT ((0)) FOR [aantsrt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt4]  DEFAULT ((0)) FOR [aantsrt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt5]  DEFAULT ((0)) FOR [aantsrt5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt6]  DEFAULT ((0)) FOR [aantsrt6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__aantsrt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__aantsrt7]  DEFAULT ((0)) FOR [aantsrt7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__plano___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__plano___]  DEFAULT ('') FOR [plano___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__label___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__label___]  DEFAULT ('') FOR [label___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__weblabel]  DEFAULT ('') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__rfqonw4l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__rfqonw4l]  DEFAULT ('') FOR [rfqonw4l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_1]  DEFAULT ('0') FOR [drg_nr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_2]  DEFAULT ('0') FOR [drg_nr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_3]  DEFAULT ('0') FOR [drg_nr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_4]  DEFAULT ('0') FOR [drg_nr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_5]  DEFAULT ('0') FOR [drg_nr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_6]  DEFAULT ('0') FOR [drg_nr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_7]  DEFAULT ('0') FOR [drg_nr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_8]  DEFAULT ('0') FOR [drg_nr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr_9]  DEFAULT ('0') FOR [drg_nr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr10]  DEFAULT ('0') FOR [drg_nr10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr11]  DEFAULT ('0') FOR [drg_nr11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr12]  DEFAULT ('0') FOR [drg_nr12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr13]  DEFAULT ('0') FOR [drg_nr13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr14]  DEFAULT ('0') FOR [drg_nr14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr15]  DEFAULT ('0') FOR [drg_nr15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__drg_nr16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__drg_nr16]  DEFAULT ('0') FOR [drg_nr16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_1]  DEFAULT ((1)) FOR [layer_nr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_2]  DEFAULT ((1)) FOR [layer_nr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_3]  DEFAULT ((1)) FOR [layer_nr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_4]  DEFAULT ((1)) FOR [layer_nr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_5]  DEFAULT ((1)) FOR [layer_nr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_6]  DEFAULT ((1)) FOR [layer_nr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_7]  DEFAULT ((1)) FOR [layer_nr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_8]  DEFAULT ((1)) FOR [layer_nr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr_9]  DEFAULT ((1)) FOR [layer_nr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr10]  DEFAULT ((1)) FOR [layer_nr10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr11]  DEFAULT ((1)) FOR [layer_nr11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr12]  DEFAULT ((1)) FOR [layer_nr12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr13]  DEFAULT ((1)) FOR [layer_nr13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr14]  DEFAULT ((1)) FOR [layer_nr14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr15]  DEFAULT ((1)) FOR [layer_nr15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrcod__layer_nr16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrcod__] ADD  CONSTRAINT [DF_klrcod__layer_nr16]  DEFAULT ((1)) FOR [layer_nr16]
END

