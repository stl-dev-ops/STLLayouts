SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_order__Created]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_order__Created](
	[rowid] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stl_order__Created] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_order__Created_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_order__Created] ADD  CONSTRAINT [DF_stl_order__Created_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_order__Created_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_order__Created] ADD  CONSTRAINT [DF_stl_order__Created_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

