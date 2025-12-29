SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_pressRollBadRowReason]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_pressRollBadRowReason](
	[stlST_pressRollBadRowReasonID] [int] IDENTITY(1,1) NOT NULL,
	[reason] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRowReason_reason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRowReason] ADD  CONSTRAINT [DF_stlST_pressRollBadRowReason_reason]  DEFAULT ('') FOR [reason]
END

