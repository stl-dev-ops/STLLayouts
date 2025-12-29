SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_v1bon_tst__ref_changes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_v1bon_tst__ref_changes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[previous_tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[new_tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_v1bon_tst__ref_changes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_v1bon_tst__ref_changes_previous_tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_v1bon_tst__ref_changes] ADD  CONSTRAINT [DF_stlQP_v1bon_tst__ref_changes_previous_tst__ref]  DEFAULT ('') FOR [previous_tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_Changed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_v1bon_tst__ref_changes] ADD  CONSTRAINT [DF_Table_1_Changed]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_v1bon_tst__ref_changes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_v1bon_tst__ref_changes] ADD  CONSTRAINT [DF_stlQP_v1bon_tst__ref_changes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

