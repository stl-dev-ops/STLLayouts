SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_Stamp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_Stamp](
	[stlPC_StampID] [int] IDENTITY(1,1) NOT NULL,
	[stampNo] [varchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lineCount] [int] NOT NULL,
	[BCM] [money] NOT NULL,
	[newDate] [datetime] NULL,
	[note] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[active] [bit] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[stlPC_AniloxMachineID] [int] NOT NULL,
 CONSTRAINT [PK_stlPC_Stamp] PRIMARY KEY CLUSTERED 
(
	[stlPC_StampID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Stamp_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Stamp] ADD  CONSTRAINT [DF_stlPC_Stamp_note]  DEFAULT ('') FOR [note]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Stamp_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Stamp] ADD  CONSTRAINT [DF_stlPC_Stamp_active]  DEFAULT ((1)) FOR [active]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Stamp_stlPC_AniloxRevisionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Stamp] ADD  CONSTRAINT [DF_stlPC_Stamp_stlPC_AniloxRevisionID]  DEFAULT ((1)) FOR [stlPC_AniloxRevisionID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Stamp_stlPC_AniloxMachineID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Stamp] ADD  CONSTRAINT [DF_stlPC_Stamp_stlPC_AniloxMachineID]  DEFAULT ((1)) FOR [stlPC_AniloxMachineID]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Stamp_stlPC_AniloxRevision]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Stamp]'))
ALTER TABLE [dbo].[stlPC_Stamp]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_Stamp_stlPC_AniloxRevision] FOREIGN KEY([stlPC_AniloxRevisionID])
REFERENCES [dbo].[stlPC_AniloxRevision] ([stlPC_AniloxRevisionID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Stamp_stlPC_AniloxRevision]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Stamp]'))
ALTER TABLE [dbo].[stlPC_Stamp] CHECK CONSTRAINT [FK_stlPC_Stamp_stlPC_AniloxRevision]
