SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incentMb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incentMb](
	[incentMbID] [int] IDENTITY(1,1) NOT NULL,
	[bonusMonth] [datetime] NOT NULL,
	[wn___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[empNo] [int] NOT NULL,
	[wn_naam_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_vnaam] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[department] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobsEligible] [int] NOT NULL,
	[jobTargetMet] [int] NOT NULL,
	[bonusPercentage] [int] NOT NULL,
	[bonusLevel] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pay_amt] [money] NOT NULL,
	[paid_amt] [money] NOT NULL,
	[dat_paid] [datetime] NULL,
	[locked] [bit] NOT NULL,
	[tmstamp] [timestamp] NULL,
	[paid__yn] [bit] NOT NULL,
 CONSTRAINT [PK_incentMb] PRIMARY KEY CLUSTERED 
(
	[incentMbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_wn_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_wn_naam_]  DEFAULT ('') FOR [wn_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_wn_vnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_wn_vnaam]  DEFAULT ('') FOR [wn_vnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_department]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_department]  DEFAULT ('') FOR [department]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_jobsEligible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_jobsEligible]  DEFAULT ((0)) FOR [jobsEligible]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_jobTargetMet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_jobTargetMet]  DEFAULT ((0)) FOR [jobTargetMet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_bonusPercentage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_bonusPercentage]  DEFAULT ((0)) FOR [bonusPercentage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_bonusLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_bonusLevel]  DEFAULT ('') FOR [bonusLevel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_pay_amt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_pay_amt]  DEFAULT ((0)) FOR [pay_amt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_paid_amt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_paid_amt]  DEFAULT ((0)) FOR [paid_amt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMb_paid__yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMb] ADD  CONSTRAINT [DF_incentMb_paid__yn]  DEFAULT ((0)) FOR [paid__yn]
END

