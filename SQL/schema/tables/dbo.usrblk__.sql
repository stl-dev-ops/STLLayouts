SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usrblk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[usrblk__](
	[prog_nr_] [int] NOT NULL,
	[progname] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[progvalu] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [datetime2](3) NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [usrblki1] PRIMARY KEY CLUSTERED 
(
	[progname] ASC,
	[progvalu] ASC,
	[usernbr_] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrblk__prog_nr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrblk__] ADD  CONSTRAINT [DF_usrblk__prog_nr_]  DEFAULT ((0)) FOR [prog_nr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrblk__progname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrblk__] ADD  CONSTRAINT [DF_usrblk__progname]  DEFAULT ('') FOR [progname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrblk__progvalu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrblk__] ADD  CONSTRAINT [DF_usrblk__progvalu]  DEFAULT ('') FOR [progvalu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrblk__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrblk__] ADD  CONSTRAINT [DF_usrblk__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_usrblk__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[usrblk__] ADD  CONSTRAINT [DF_usrblk__datum___]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [datum___]
END

