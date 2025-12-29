SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPKZ_BaleConsumption_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPKZ_BaleConsumption_Log](
	[stlPKZ_BaleConsumption_LogID] [int] IDENTITY(1,1) NOT NULL,
	[logDt] [datetime] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_stlPKZ_BaleConsumption_Log] PRIMARY KEY CLUSTERED 
(
	[stlPKZ_BaleConsumption_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BaleConsumption_Log_logDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_BaleConsumption_Log] ADD  CONSTRAINT [DF_stlPKZ_BaleConsumption_Log_logDt]  DEFAULT (getdate()) FOR [logDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BaleConsumption_Log_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_BaleConsumption_Log] ADD  CONSTRAINT [DF_stlPKZ_BaleConsumption_Log_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BaleConsumption_Log_qty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_BaleConsumption_Log] ADD  CONSTRAINT [DF_stlPKZ_BaleConsumption_Log_qty]  DEFAULT ((0)) FOR [qty]
END

