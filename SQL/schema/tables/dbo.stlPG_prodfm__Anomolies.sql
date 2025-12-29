SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPG_prodfm__Anomolies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPG_prodfm__Anomolies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfm_oms_Anomoly] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Notes] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Blocked] [tinyint] NOT NULL,
 CONSTRAINT [PK_stlPG_prodfm__Anomolies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPG_prodfm__Anomolies_Blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPG_prodfm__Anomolies] ADD  CONSTRAINT [DF_stlPG_prodfm__Anomolies_Blocked]  DEFAULT ((0)) FOR [Blocked]
END

