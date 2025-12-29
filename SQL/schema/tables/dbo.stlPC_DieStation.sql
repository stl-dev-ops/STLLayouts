SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_DieStation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_DieStation](
	[stlPC_DieStationID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_PressCardID] [int] NOT NULL,
	[stns_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stationNo] [int] NOT NULL,
	[magCylNo] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[lbsOpSide] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[lbsGearSide] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[Anvil] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[dieChangePressRoll] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlPC_DieStation] PRIMARY KEY CLUSTERED 
(
	[stlPC_DieStationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_DieStation_magCylNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_DieStation] ADD  CONSTRAINT [DF_stlPC_DieStation_magCylNo]  DEFAULT ('') FOR [magCylNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_DieStation_dieChangePressRoll]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_DieStation] ADD  CONSTRAINT [DF_stlPC_DieStation_dieChangePressRoll]  DEFAULT ('') FOR [dieChangePressRoll]
END

