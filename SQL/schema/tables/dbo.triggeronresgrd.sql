SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[triggeronresgrd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[triggeronresgrd](
	[user____] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[timestamp] [datetime] NULL,
	[kla__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[res__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_dat_resv] [date] NULL,
	[newvalue_dat_resv] [date] NULL,
	[oldvalue_uur_resv] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_uur_resv] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_ord__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_ord__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_art__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_art__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_reserve_] [float] NULL,
	[newvalue_reserve_] [float] NULL
) ON [PRIMARY]
END
