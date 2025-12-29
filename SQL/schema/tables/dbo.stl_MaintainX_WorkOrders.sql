SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_MaintainX_WorkOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_MaintainX_WorkOrders](
	[id] [int] NOT NULL,
	[sequentialId] [int] NULL,
	[assetId] [int] NULL,
	[locationId] [int] NULL,
	[priority] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[title] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[startDate] [datetime2](7) NULL,
	[dueDate] [datetime2](7) NULL,
	[completedAt] [datetime2](7) NULL,
	[estimatedTime] [int] NULL,
	[recurrenceType] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[recurrenceInterval] [int] NULL,
	[recurrenceDay] [int] NULL,
	[procedureId] [int] NULL,
	[procedureTitle] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[progressOpenCount] [int] NULL,
	[progressInProgressCount] [int] NULL,
	[progressOnHoldCount] [int] NULL,
	[progressDoneCount] [int] NULL,
	[thumbnailUrl] [nvarchar](1000) COLLATE Latin1_General_CI_AS NULL,
	[type] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[full_json] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[last_loaded_at] [datetime2](7) NULL,
	[asset] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[location] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__MaintainX__last___462E3128]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_MaintainX_WorkOrders] ADD  DEFAULT (getdate()) FOR [last_loaded_at]
END

