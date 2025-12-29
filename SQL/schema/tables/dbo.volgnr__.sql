SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[volgnr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[volgnr__](
	[v_onoff_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_nxtnr_] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [volgnri0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_volgnr__v_onoff_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[volgnr__] ADD  CONSTRAINT [DF_volgnr__v_onoff_]  DEFAULT ('') FOR [v_onoff_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_volgnr__v_nxtnr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[volgnr__] ADD  CONSTRAINT [DF_volgnr__v_nxtnr_]  DEFAULT ((0)) FOR [v_nxtnr_]
END

