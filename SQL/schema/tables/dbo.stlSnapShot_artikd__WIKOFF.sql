SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSnapShot_artikd__WIKOFF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSnapShot_artikd__WIKOFF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AsOf] [datetime] NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[in___qrt] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levdat__] [date] NOT NULL,
	[levuur__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[besteld_] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_qrt] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakprijs] [float] NOT NULL,
	[validdat] [date] NOT NULL,
	[joins___] [int] NOT NULL,
	[core____] [float] NOT NULL,
	[face____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] NOT NULL,
 CONSTRAINT [PK_stlSnapShot_artikd__WIKOFF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSnapShot_artikd__WIKOFF___AsOf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSnapShot_artikd__WIKOFF] ADD  CONSTRAINT [DF_stlSnapShot_artikd__WIKOFF___AsOf]  DEFAULT (getdate()) FOR [AsOf]
END

