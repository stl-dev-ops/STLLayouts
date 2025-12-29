SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[operator](
	[operatorID] [int] IDENTITY(1,1) NOT NULL,
	[operator] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[active] [bit] NOT NULL,
	[tmstamp] [timestamp] NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [aaaaaoperator_PK] PRIMARY KEY NONCLUSTERED 
(
	[operatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[operator]') AND name = N'operatorID')
CREATE NONCLUSTERED INDEX [operatorID] ON [dbo].[operator]
(
	[operatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__operator__active__0678CA93]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[operator] ADD  DEFAULT ((1)) FOR [active]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_operator_usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[operator] ADD  CONSTRAINT [DF_operator_usernbr_]  DEFAULT ('') FOR [usernbr_]
END

