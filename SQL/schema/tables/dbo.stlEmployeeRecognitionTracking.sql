SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionTracking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmployeeRecognitionTracking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IncentiveOfferDate] [date] NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[ExpectedPayDate] [date] NULL,
	[ActualPayDate] [date] NULL,
	[Amount] [money] NULL,
	[Manager_usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[RecognitionTypeID] [int] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Modified] [date] NULL,
 CONSTRAINT [PK_stlEmployeeRecognitionTracking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmployeeRecognitionTracking_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmployeeRecognitionTracking] ADD  CONSTRAINT [DF_stlEmployeeRecognitionTracking_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmployeeRecognitionTracking_Modified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmployeeRecognitionTracking] ADD  CONSTRAINT [DF_stlEmployeeRecognitionTracking_Modified]  DEFAULT (getdate()) FOR [Modified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlEmployeeRecognitionTracking_RecognitionTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionTracking]'))
ALTER TABLE [dbo].[stlEmployeeRecognitionTracking]  WITH CHECK ADD  CONSTRAINT [FK_stlEmployeeRecognitionTracking_RecognitionTypeID] FOREIGN KEY([RecognitionTypeID])
REFERENCES [dbo].[stlEmployeeRecognitionTypes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlEmployeeRecognitionTracking_RecognitionTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionTracking]'))
ALTER TABLE [dbo].[stlEmployeeRecognitionTracking] CHECK CONSTRAINT [FK_stlEmployeeRecognitionTracking_RecognitionTypeID]
