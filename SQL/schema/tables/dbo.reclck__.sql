SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reclck__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[reclck__](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid___] [int] NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [datetime2](3) NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_recl] PRIMARY KEY CLUSTERED 
(
	[tabname_] ASC,
	[rowid___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_reclck__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[reclck__] ADD  CONSTRAINT [DF_reclck__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_reclck__rowid___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[reclck__] ADD  CONSTRAINT [DF_reclck__rowid___]  DEFAULT ((0)) FOR [rowid___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_reclck__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[reclck__] ADD  CONSTRAINT [DF_reclck__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_reclck__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[reclck__] ADD  CONSTRAINT [DF_reclck__datum___]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [datum___]
END

