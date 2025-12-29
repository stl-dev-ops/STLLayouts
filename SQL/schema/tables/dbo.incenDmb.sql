SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incenDmb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incenDmb](
	[incenDmbID] [int] IDENTITY(1,1) NOT NULL,
	[department] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonusPercent] [int] NOT NULL,
	[bonusPay] [int] NOT NULL,
 CONSTRAINT [PK_incenDmb] PRIMARY KEY CLUSTERED 
(
	[incenDmbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incenDmb_department]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incenDmb] ADD  CONSTRAINT [DF_incenDmb_department]  DEFAULT ('') FOR [department]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incenDmb_bonusPercent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incenDmb] ADD  CONSTRAINT [DF_incenDmb_bonusPercent]  DEFAULT ((0)) FOR [bonusPercent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incenDmb_bonusPay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incenDmb] ADD  CONSTRAINT [DF_incenDmb_bonusPay]  DEFAULT ((0)) FOR [bonusPay]
END

