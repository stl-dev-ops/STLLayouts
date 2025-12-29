SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_bstlyn__PriceChanges]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_bstlyn__PriceChanges](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Operation] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr_excl_OLD] [float] NULL,
	[preexcl_OLD] [float] NULL,
	[preexclvOLD] [float] NULL,
	[pr_incl_OLD] [float] NULL,
	[proexcl_OLD] [float] NULL,
	[proexclvOLD] [float] NULL,
	[pr_exclvOLD] [float] NULL,
	[pr_inclvOLD] [float] NULL,
	[pr_excl_NEW] [float] NULL,
	[preexcl_NEW] [float] NULL,
	[preexclvNEW] [float] NULL,
	[pr_incl_NEW] [float] NULL,
	[proexcl_NEW] [float] NULL,
	[proexclvNEW] [float] NULL,
	[pr_exclvNEW] [float] NULL,
	[pr_inclvNEW] [float] NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stl_bstlyn__PriceChanges] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_Description1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_Description1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_preexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_preexcl_]  DEFAULT ((0)) FOR [preexcl_OLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_preexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_preexclv]  DEFAULT ((0)) FOR [preexclvOLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_incl_]  DEFAULT ((0)) FOR [pr_incl_OLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_proexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_proexcl_]  DEFAULT ((0)) FOR [proexcl_OLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_proexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_proexclv]  DEFAULT ((0)) FOR [proexclvOLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_exclv]  DEFAULT ((0)) FOR [pr_exclvOLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_inclv]  DEFAULT ((0)) FOR [pr_inclvOLD]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_preexcl__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_preexcl__1]  DEFAULT ((0)) FOR [preexcl_NEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_preexclv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_preexclv_1]  DEFAULT ((0)) FOR [preexclvNEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_incl__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_incl__1]  DEFAULT ((0)) FOR [pr_incl_NEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_proexcl__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_proexcl__1]  DEFAULT ((0)) FOR [proexcl_NEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_proexclv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_proexclv_1]  DEFAULT ((0)) FOR [proexclvNEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_exclv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_exclv_1]  DEFAULT ((0)) FOR [pr_exclvNEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_pr_inclv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_pr_inclv_1]  DEFAULT ((0)) FOR [pr_inclvNEW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_bstlyn__PriceChanges_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_bstlyn__PriceChanges] ADD  CONSTRAINT [DF_stl_bstlyn__PriceChanges_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

