SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSnapShot_SCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSnapShot_SCH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AsOf] [datetime] NOT NULL,
	[Est_COGs] [float] NOT NULL,
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktie___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[priorite] [int] NOT NULL,
	[druk____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan__iu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_cal] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duurstel] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duurprod] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd__] [int] NOT NULL,
	[komment_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment3] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment4] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [datetime] NOT NULL,
	[start___] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datumend] [datetime] NOT NULL,
	[stop____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[weeknum_] [int] NOT NULL,
	[planvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__min] [datetime] NOT NULL,
	[sta__min] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__max] [datetime] NOT NULL,
	[sta__max] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[valide__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[orgdatum] [datetime] NOT NULL,
	[orgstart] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__date] [datetime] NOT NULL,
	[af__uur_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__user] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__wyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__duur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] NOT NULL,
 CONSTRAINT [PK_stlSnapShot_plandv__] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSnapShot_SCH]') AND name = N'IX_stlSnapShot_plandv__AsOf')
CREATE NONCLUSTERED INDEX [IX_stlSnapShot_plandv__AsOf] ON [dbo].[stlSnapShot_SCH]
(
	[AsOf] ASC
)
INCLUDE([Est_COGs],[pldv_ref],[ord__ref],[suborder],[kpn__ref],[dg___ref],[af__wyze],[af__duur],[jobnr_vw],[rowid],[kla__rpn],[orgdatum],[orgstart],[af__date],[af__uur_],[af__user],[dat__max],[sta__max],[valide__],[pmd__ref],[wn___ref],[kla__ref],[datumend],[stop____],[weeknum_],[planvast],[dat__min],[sta__min],[komment1],[komment2],[komment3],[komment4],[datum___],[start___],[duurprod],[wissels_],[pln_tm__],[pln_dt__],[pln_dd__],[komment_],[akt__ref],[plpl_ref],[plpl_cal],[aantal__],[duur____],[duurstel],[aktie___],[priorite],[druk____],[toestand],[plan__iu],[wp___ref]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSnapShot_plandv___AsOf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSnapShot_SCH] ADD  CONSTRAINT [DF_stlSnapShot_plandv___AsOf]  DEFAULT (getdate()) FOR [AsOf]
END

