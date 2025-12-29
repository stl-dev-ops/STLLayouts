SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPD_GoodWork_DEV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPD_GoodWork_DEV](
	[STLPD_GoodWorkID] [int] IDENTITY(1,1) NOT NULL,
	[WorkDate] [datetime] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ClockedMinutes] [int] NOT NULL,
	[GoodMinutes] [int] NOT NULL,
	[GoodFeet] [float] NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[STLPD_GoodWorkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_stlPD_GoodWork_DEV] UNIQUE NONCLUSTERED 
(
	[WorkDate] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlPD_Goo__Clock__55066064]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_GoodWork_DEV] ADD  DEFAULT ((0)) FOR [ClockedMinutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlPD_Goo__GoodM__55FA849D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_GoodWork_DEV] ADD  DEFAULT ((0)) FOR [GoodMinutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlPD_Goo__GoodF__56EEA8D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_GoodWork_DEV] ADD  DEFAULT ((0)) FOR [GoodFeet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlPD_Goo__Creat__57E2CD0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_GoodWork_DEV] ADD  DEFAULT (getdate()) FOR [CreatedAt]
END

