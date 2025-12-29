SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paswrd__verte___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[paswrd__verte___](
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [paswrd__verte_i0] PRIMARY KEY CLUSTERED 
(
	[usernbr_] ASC,
	[vrt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__verte___usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__verte___] ADD  CONSTRAINT [DF_paswrd__verte___usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__verte___vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__verte___] ADD  CONSTRAINT [DF_paswrd__verte___vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

