SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexCompensation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[OrganizationLevelID1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OrganizationLevelID2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CompensationMonth] [datetime] NOT NULL,
	[CompensationType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Hours] [float] NULL,
	[Earnings] [float] NULL,
 CONSTRAINT [PK_stlPaychexCompensation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexCompensation_empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexCompensation] ADD  CONSTRAINT [DF_stlPaychexCompensation_empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPaychexCompensation_stlPaychexOrganizationLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation]  WITH CHECK ADD  CONSTRAINT [FK_stlPaychexCompensation_stlPaychexOrganizationLevel] FOREIGN KEY([OrganizationLevelID2])
REFERENCES [dbo].[stlPaychexOrganizationLevel] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPaychexCompensation_stlPaychexOrganizationLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation] CHECK CONSTRAINT [FK_stlPaychexCompensation_stlPaychexOrganizationLevel]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPaychexCompensation_stlPaychexOrganizationLevel1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation]  WITH CHECK ADD  CONSTRAINT [FK_stlPaychexCompensation_stlPaychexOrganizationLevel1] FOREIGN KEY([OrganizationLevelID1])
REFERENCES [dbo].[stlPaychexOrganizationLevel] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPaychexCompensation_stlPaychexOrganizationLevel1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation] CHECK CONSTRAINT [FK_stlPaychexCompensation_stlPaychexOrganizationLevel1]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlPaychexCompensation]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation]  WITH CHECK ADD  CONSTRAINT [CK_stlPaychexCompensation] CHECK  ((datepart(day,[CompensationMonth])=(1)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlPaychexCompensation]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPaychexCompensation]'))
ALTER TABLE [dbo].[stlPaychexCompensation] CHECK CONSTRAINT [CK_stlPaychexCompensation]
