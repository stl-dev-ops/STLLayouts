SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOS_Batch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlOS_Batch](
	[stlOS_BatchID] [int] IDENTITY(1,1) NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[batchType] [int] NOT NULL,
 CONSTRAINT [PK_stlOS_Batch] PRIMARY KEY CLUSTERED 
(
	[stlOS_BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_Batch_create_dt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_Batch] ADD  CONSTRAINT [DF_stlOS_Batch_create_dt]  DEFAULT (getdate()) FOR [create_dt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_Batch_batchType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_Batch] ADD  CONSTRAINT [DF_stlOS_Batch_batchType]  DEFAULT ((0)) FOR [batchType]
END

