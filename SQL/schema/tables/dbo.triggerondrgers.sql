SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[triggerondrgers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[triggerondrgers](
	[user____] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[timestamp] [datetime] NULL,
	[oldvalue_fr] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_fr] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_lm] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_lm] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[oldvalue_rg] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[newvalue_rg] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[drg__ref] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[old_description] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[new_description] [varchar](50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
END
