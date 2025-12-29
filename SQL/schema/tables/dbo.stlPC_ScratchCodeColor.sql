SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_ScratchCodeColor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_ScratchCodeColor](
	[stlPC_ScratchCodeColorID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_ScratchCodeID] [int] NOT NULL,
	[station] [int] NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniloxFrom] [int] NULL,
	[aniloxTo] [int] NULL,
	[BCMFrom] [money] NULL,
	[BCMTo] [money] NULL,
	[platePR] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[note] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlPC_ScratchCodeColor] PRIMARY KEY CLUSTERED 
(
	[stlPC_ScratchCodeColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_stlPC_ScratchCodeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_stlPC_ScratchCodeID]  DEFAULT ((0)) FOR [stlPC_ScratchCodeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_aniloxFrom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_aniloxFrom]  DEFAULT ((0)) FOR [aniloxFrom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_aniloxTo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_aniloxTo]  DEFAULT ((0)) FOR [aniloxTo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_BCMFrom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_BCMFrom]  DEFAULT ((0)) FOR [BCMFrom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_BCMTo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_BCMTo]  DEFAULT ((0)) FOR [BCMTo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_platePR]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_platePR]  DEFAULT ('') FOR [platePR]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchCodeColor_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] ADD  CONSTRAINT [DF_stlPC_ScratchCodeColor_note]  DEFAULT ('') FOR [note]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_ScratchCodeColor_stlPC_ScratchCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_ScratchCodeColor]'))
ALTER TABLE [dbo].[stlPC_ScratchCodeColor]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_ScratchCodeColor_stlPC_ScratchCode] FOREIGN KEY([stlPC_ScratchCodeID])
REFERENCES [dbo].[stlPC_ScratchCode] ([stlPC_ScratchCodeID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_ScratchCodeColor_stlPC_ScratchCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_ScratchCodeColor]'))
ALTER TABLE [dbo].[stlPC_ScratchCodeColor] CHECK CONSTRAINT [FK_stlPC_ScratchCodeColor_stlPC_ScratchCode]
