SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pressRollWaste210303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pressRollWaste210303](
	[pressRollWasteID] [int] IDENTITY(1,1) NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pressGoodLabels] [int] NOT NULL,
	[actualGoodLabels] [int] NOT NULL,
	[rewindWasteFt] [real] NOT NULL,
	[pressBadMaterialFt] [real] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[rewindBrickID] [int] NOT NULL,
	[aantm_in] [real] NOT NULL,
	[carryOverGoodLabels] [int] NOT NULL,
	[badRowsMaterialFt] [real] NOT NULL,
	[goodCount] [real] NOT NULL,
	[carryOverCount] [real] NOT NULL,
	[actualGoodFt] [real] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[noCarryover] [bit] NOT NULL,
	[carryOverGoodFt] [real] NOT NULL,
	[closed] [bit] NOT NULL,
	[flatrolls] [int] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[grossGoodLabels] [int] NOT NULL,
	[noTraceabilityNT] [bit] NOT NULL,
	[numberOfBricksNT] [int] NOT NULL,
	[countPerBrickNT] [int] NOT NULL
) ON [PRIMARY]
END
