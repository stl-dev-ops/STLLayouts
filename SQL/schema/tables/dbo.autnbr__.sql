SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autnbr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autnbr__](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[colname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[groupval] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[next_nbr] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autnbri1] PRIMARY KEY CLUSTERED 
(
	[tabname_] ASC,
	[colname_] ASC,
	[groupval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autnbr__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autnbr__] ADD  CONSTRAINT [DF_autnbr__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autnbr__colname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autnbr__] ADD  CONSTRAINT [DF_autnbr__colname_]  DEFAULT ('') FOR [colname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autnbr__groupval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autnbr__] ADD  CONSTRAINT [DF_autnbr__groupval]  DEFAULT ('') FOR [groupval]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autnbr__next_nbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autnbr__] ADD  CONSTRAINT [DF_autnbr__next_nbr]  DEFAULT ((0)) FOR [next_nbr]
END

