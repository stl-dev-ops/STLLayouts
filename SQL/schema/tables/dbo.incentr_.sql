SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incentr_]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incentr_](
	[id] [int] NOT NULL,
	[department] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rate____] [money] NULL,
	[rdRate] [money] NULL,
	[cohesioRate] [money] NULL,
 CONSTRAINT [PK_incentr_] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentr__department]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentr_] ADD  CONSTRAINT [DF_incentr__department]  DEFAULT ('') FOR [department]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentr__rate____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentr_] ADD  CONSTRAINT [DF_incentr__rate____]  DEFAULT ((0)) FOR [rate____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentr__rdRate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentr_] ADD  CONSTRAINT [DF_incentr__rdRate]  DEFAULT ((0)) FOR [rdRate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentr__cohesioRate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentr_] ADD  CONSTRAINT [DF_incentr__cohesioRate]  DEFAULT ((0)) FOR [cohesioRate]
END

