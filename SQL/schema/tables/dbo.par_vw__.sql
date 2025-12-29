SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[par_vw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[par_vw__](
	[vlgjobnr] [int] NOT NULL,
	[pid_moni] [int] NOT NULL,
	[pid_moto] [int] NOT NULL,
	[act_moto] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [par_vwi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_par_vw__vlgjobnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[par_vw__] ADD  CONSTRAINT [DF_par_vw__vlgjobnr]  DEFAULT ((0)) FOR [vlgjobnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_par_vw__pid_moni]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[par_vw__] ADD  CONSTRAINT [DF_par_vw__pid_moni]  DEFAULT ((0)) FOR [pid_moni]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_par_vw__pid_moto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[par_vw__] ADD  CONSTRAINT [DF_par_vw__pid_moto]  DEFAULT ((0)) FOR [pid_moto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_par_vw__act_moto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[par_vw__] ADD  CONSTRAINT [DF_par_vw__act_moto]  DEFAULT ('') FOR [act_moto]
END

