SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMG_Msg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMG_Msg](
	[stlMG_MsgID] [int] IDENTITY(1,1) NOT NULL,
	[msg] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[sortOrder] [int] NOT NULL,
 CONSTRAINT [PK_stlMG_Msg] PRIMARY KEY CLUSTERED 
(
	[stlMG_MsgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMG_Msg_msg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMG_Msg] ADD  CONSTRAINT [DF_stlMG_Msg_msg]  DEFAULT ('') FOR [msg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMG_Msg_sortOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMG_Msg] ADD  CONSTRAINT [DF_stlMG_Msg_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
END

