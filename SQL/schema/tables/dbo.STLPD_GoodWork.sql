SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STLPD_GoodWork]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STLPD_GoodWork](
	[STLPD_GoodWorkID] [int] IDENTITY(1,1) NOT NULL,
	[WorkDate] [datetime] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ClockedMinutes] [int] NOT NULL,
	[GoodMinutes] [int] NOT NULL,
	[GoodFeet] [float] NOT NULL,
	[totMinutes] [int] NOT NULL,
 CONSTRAINT [PK_STLPD_GoodWork] PRIMARY KEY CLUSTERED 
(
	[STLPD_GoodWorkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_STLPD_GoodWork_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[STLPD_GoodWork] ADD  CONSTRAINT [DF_STLPD_GoodWork_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_STLPD_GoodWork_ClockedMinutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[STLPD_GoodWork] ADD  CONSTRAINT [DF_STLPD_GoodWork_ClockedMinutes]  DEFAULT ((0)) FOR [ClockedMinutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_STLPD_GoodWork_GoodMinutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[STLPD_GoodWork] ADD  CONSTRAINT [DF_STLPD_GoodWork_GoodMinutes]  DEFAULT ((0)) FOR [GoodMinutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_STLPD_GoodWork_GoodFeet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[STLPD_GoodWork] ADD  CONSTRAINT [DF_STLPD_GoodWork_GoodFeet]  DEFAULT ((0)) FOR [GoodFeet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_STLPD_GoodWork_totMinutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[STLPD_GoodWork] ADD  CONSTRAINT [DF_STLPD_GoodWork_totMinutes]  DEFAULT ((0)) FOR [totMinutes]
END

