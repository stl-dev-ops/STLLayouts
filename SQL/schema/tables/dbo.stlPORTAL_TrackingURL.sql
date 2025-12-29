SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPORTAL_TrackingURL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPORTAL_TrackingURL](
	[stlPORTAL_TrackingURLID] [int] IDENTITY(1,1) NOT NULL,
	[carrier_KW] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[carrierName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trackingURL] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPORTAL_TrackingURL] PRIMARY KEY CLUSTERED 
(
	[stlPORTAL_TrackingURLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPORTAL_TrackingURL_carrier_KW]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPORTAL_TrackingURL] ADD  CONSTRAINT [DF_stlPORTAL_TrackingURL_carrier_KW]  DEFAULT ('') FOR [carrier_KW]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPORTAL_TrackingURL_carrierName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPORTAL_TrackingURL] ADD  CONSTRAINT [DF_stlPORTAL_TrackingURL_carrierName]  DEFAULT ('') FOR [carrierName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPORTAL_TrackingURL_trackingURL]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPORTAL_TrackingURL] ADD  CONSTRAINT [DF_stlPORTAL_TrackingURL_trackingURL]  DEFAULT ('') FOR [trackingURL]
END

