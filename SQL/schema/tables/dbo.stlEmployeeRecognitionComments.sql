SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmployeeRecognitionComments](
	[EmployeeRecognitionTrackingID] [int] NOT NULL,
	[Comments] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlEmployeeRecognitionComments] PRIMARY KEY CLUSTERED 
(
	[EmployeeRecognitionTrackingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlEmployeeRecognitionComments_EmployeeRecognitionTrackingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionComments]'))
ALTER TABLE [dbo].[stlEmployeeRecognitionComments]  WITH CHECK ADD  CONSTRAINT [FK_stlEmployeeRecognitionComments_EmployeeRecognitionTrackingID] FOREIGN KEY([EmployeeRecognitionTrackingID])
REFERENCES [dbo].[stlEmployeeRecognitionTracking] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlEmployeeRecognitionComments_EmployeeRecognitionTrackingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionComments]'))
ALTER TABLE [dbo].[stlEmployeeRecognitionComments] CHECK CONSTRAINT [FK_stlEmployeeRecognitionComments_EmployeeRecognitionTrackingID]
