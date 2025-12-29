SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autusr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autusr__](
	[aut_usr_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_usr] [int] NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autusri0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autusr__aut_usr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autusr__] ADD  CONSTRAINT [DF_autusr__aut_usr_]  DEFAULT ('') FOR [aut_usr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autusr__volg_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autusr__] ADD  CONSTRAINT [DF_autusr__volg_usr]  DEFAULT ((0)) FOR [volg_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autusr__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autusr__] ADD  CONSTRAINT [DF_autusr__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autusr__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autusr__] ADD  CONSTRAINT [DF_autusr__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

