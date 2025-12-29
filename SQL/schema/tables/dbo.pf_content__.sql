SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_content__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_content__](
	[production_flow_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[amount] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [pf_contenti0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__content_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__content_id]  DEFAULT ((0)) FOR [content_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_content__amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_content__] ADD  CONSTRAINT [DF_pf_content__amount]  DEFAULT ((0)) FOR [amount]
END

