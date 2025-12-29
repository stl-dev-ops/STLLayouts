SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[slvtol__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[slvtol__](
	[sltolref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ltol_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[resteenh] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal_1] [float] NOT NULL,
	[aantal_2] [float] NOT NULL,
	[aantal_3] [float] NOT NULL,
	[aantal_4] [float] NOT NULL,
	[aantal_5] [float] NOT NULL,
	[code___1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code___2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code___3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code___4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code___5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[minpro_1] [float] NOT NULL,
	[minpro_2] [float] NOT NULL,
	[minpro_3] [float] NOT NULL,
	[minpro_4] [float] NOT NULL,
	[minpro_5] [float] NOT NULL,
	[maxpro_1] [float] NOT NULL,
	[maxpro_2] [float] NOT NULL,
	[maxpro_3] [float] NOT NULL,
	[maxpro_4] [float] NOT NULL,
	[maxpro_5] [float] NOT NULL,
	[minabs_1] [float] NOT NULL,
	[minabs_2] [float] NOT NULL,
	[minabs_3] [float] NOT NULL,
	[minabs_4] [float] NOT NULL,
	[minabs_5] [float] NOT NULL,
	[maxabs_1] [float] NOT NULL,
	[maxabs_2] [float] NOT NULL,
	[maxabs_3] [float] NOT NULL,
	[maxabs_4] [float] NOT NULL,
	[maxabs_5] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_slto] PRIMARY KEY CLUSTERED 
(
	[ltol_ref] ASC,
	[sltolref] ASC,
	[prkl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__sltolref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__sltolref]  DEFAULT ('') FOR [sltolref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__ltol_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__ltol_ref]  DEFAULT ('') FOR [ltol_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__resteenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__resteenh]  DEFAULT ('') FOR [resteenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__aantal_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__aantal_1]  DEFAULT ((0)) FOR [aantal_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__aantal_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__aantal_2]  DEFAULT ((0)) FOR [aantal_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__aantal_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__aantal_3]  DEFAULT ((0)) FOR [aantal_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__aantal_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__aantal_4]  DEFAULT ((0)) FOR [aantal_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__aantal_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__aantal_5]  DEFAULT ((0)) FOR [aantal_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__code___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__code___1]  DEFAULT ('') FOR [code___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__code___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__code___2]  DEFAULT ('') FOR [code___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__code___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__code___3]  DEFAULT ('') FOR [code___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__code___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__code___4]  DEFAULT ('') FOR [code___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__code___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__code___5]  DEFAULT ('') FOR [code___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minpro_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minpro_1]  DEFAULT ((0)) FOR [minpro_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minpro_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minpro_2]  DEFAULT ((0)) FOR [minpro_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minpro_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minpro_3]  DEFAULT ((0)) FOR [minpro_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minpro_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minpro_4]  DEFAULT ((0)) FOR [minpro_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minpro_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minpro_5]  DEFAULT ((0)) FOR [minpro_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxpro_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxpro_1]  DEFAULT ((0)) FOR [maxpro_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxpro_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxpro_2]  DEFAULT ((0)) FOR [maxpro_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxpro_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxpro_3]  DEFAULT ((0)) FOR [maxpro_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxpro_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxpro_4]  DEFAULT ((0)) FOR [maxpro_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxpro_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxpro_5]  DEFAULT ((0)) FOR [maxpro_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minabs_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minabs_1]  DEFAULT ((0)) FOR [minabs_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minabs_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minabs_2]  DEFAULT ((0)) FOR [minabs_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minabs_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minabs_3]  DEFAULT ((0)) FOR [minabs_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minabs_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minabs_4]  DEFAULT ((0)) FOR [minabs_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__minabs_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__minabs_5]  DEFAULT ((0)) FOR [minabs_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxabs_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxabs_1]  DEFAULT ((0)) FOR [maxabs_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxabs_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxabs_2]  DEFAULT ((0)) FOR [maxabs_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxabs_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxabs_3]  DEFAULT ((0)) FOR [maxabs_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxabs_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxabs_4]  DEFAULT ((0)) FOR [maxabs_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_slvtol__maxabs_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[slvtol__] ADD  CONSTRAINT [DF_slvtol__maxabs_5]  DEFAULT ((0)) FOR [maxabs_5]
END

