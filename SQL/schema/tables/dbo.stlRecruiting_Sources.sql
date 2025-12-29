SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Sources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Sources](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[SourceName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[SourceType] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Sources] PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__stlRecru__3C28DC171B2358D0] UNIQUE NONCLUSTERED 
(
	[SourceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Sources_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Sources] ADD  CONSTRAINT [DF_stlRecruiting_Sources_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__60AD1D3A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Sources] ADD  CONSTRAINT [DF__stlRecrui__Creat__60AD1D3A]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__61A14173]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Sources] ADD  CONSTRAINT [DF__stlRecrui__Creat__61A14173]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__629565AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Sources] ADD  CONSTRAINT [DF__stlRecrui__Updat__629565AC]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__638989E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Sources] ADD  CONSTRAINT [DF__stlRecrui__Updat__638989E5]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Sourc__5FB8F901]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Sources]'))
ALTER TABLE [dbo].[stlRecruiting_Sources]  WITH CHECK ADD  CONSTRAINT [CK__stlRecrui__Sourc__5FB8F901] CHECK  (([SourceType]='Other' OR [SourceType]='Referral' OR [SourceType]='Social Media' OR [SourceType]='Job Board'))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Sourc__5FB8F901]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Sources]'))
ALTER TABLE [dbo].[stlRecruiting_Sources] CHECK CONSTRAINT [CK__stlRecrui__Sourc__5FB8F901]
