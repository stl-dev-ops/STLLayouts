SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drgpal__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drgpal__](
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drgp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lengte__] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[bst__min] [float] NOT NULL,
	[bst__max] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drgpali1] PRIMARY KEY CLUSTERED 
(
	[drg__ref] ASC,
	[drgp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__drgp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__drgp_ref]  DEFAULT ('') FOR [drgp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__bst__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__bst__min]  DEFAULT ((0)) FOR [bst__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgpal__bst__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgpal__] ADD  CONSTRAINT [DF_drgpal__bst__max]  DEFAULT ((0)) FOR [bst__max]
END

