SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSnapShot_ExpectedShipDates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSnapShot_ExpectedShipDates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Old_vrzv_dat] [datetime] NOT NULL,
	[New_vrzv_dat] [datetime] NULL,
	[Old_levv_dat] [datetime] NULL,
	[New_levv_dat] [datetime] NULL,
	[ChangeDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_stlSnapShot_ExpectedShipDates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSnapShot_ExpectedShipDates_ChangeDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSnapShot_ExpectedShipDates] ADD  CONSTRAINT [DF_stlSnapShot_ExpectedShipDates_ChangeDateTime]  DEFAULT (getdate()) FOR [ChangeDateTime]
END

