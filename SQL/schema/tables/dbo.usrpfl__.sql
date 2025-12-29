SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usrpfl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[usrpfl__](
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [usrpfli0] PRIMARY KEY CLUSTERED 
(
	[usernbr_] ASC,
	[pfl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrpfl__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrpfl__] ADD  CONSTRAINT [DF_usrpfl__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrpfl__pfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrpfl__] ADD  CONSTRAINT [DF_usrpfl__pfl__ref]  DEFAULT ('') FOR [pfl__ref]
END

