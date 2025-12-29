SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afdohk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afdohk__](
	[bdgt_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijze___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[percent_] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afdohki0] PRIMARY KEY CLUSTERED 
(
	[bdgt_ref] ASC,
	[afd__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdohk__bdgt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdohk__] ADD  CONSTRAINT [DF_afdohk__bdgt_ref]  DEFAULT ('') FOR [bdgt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdohk__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdohk__] ADD  CONSTRAINT [DF_afdohk__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdohk__wijze___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdohk__] ADD  CONSTRAINT [DF_afdohk__wijze___]  DEFAULT ('') FOR [wijze___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdohk__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdohk__] ADD  CONSTRAINT [DF_afdohk__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afdohk__percent_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afdohk__] ADD  CONSTRAINT [DF_afdohk__percent_]  DEFAULT ((0)) FOR [percent_]
END

