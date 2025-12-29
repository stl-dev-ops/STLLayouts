SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_RewinderSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_RewinderSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlREWSPOOL_RewinderID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[ManualRewindTensionStart] [float] NULL,
	[ManualRewindTensionEnd] [float] NULL,
	[ManualUnwindTensionStart] [float] NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlREWSPOOL_RewinderSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_RewinderSettings_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_RewinderSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_RewinderSettings_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_RewinderSettings_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_RewinderSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_RewinderSettings_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_RewinderSettings_stlREWSPOOL_Rewinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_RewinderSettings]'))
ALTER TABLE [dbo].[stlREWSPOOL_RewinderSettings]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_RewinderSettings_stlREWSPOOL_Rewinder] FOREIGN KEY([stlREWSPOOL_RewinderID])
REFERENCES [dbo].[stlREWSPOOL_Rewinder] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_RewinderSettings_stlREWSPOOL_Rewinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_RewinderSettings]'))
ALTER TABLE [dbo].[stlREWSPOOL_RewinderSettings] CHECK CONSTRAINT [FK_stlREWSPOOL_RewinderSettings_stlREWSPOOL_Rewinder]
