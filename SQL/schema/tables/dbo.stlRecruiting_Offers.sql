SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Offers](
	[OfferID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[OfferDate] [datetime] NOT NULL,
	[Status] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Salary] [decimal](15, 2) NULL,
	[ResponseDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]') AND name = N'idx_stlRecruiting_Offers_ApplicationID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Offers_ApplicationID] ON [dbo].[stlRecruiting_Offers]
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Offer__4E8E6CFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Offers] ADD  CONSTRAINT [DF__stlRecrui__Offer__4E8E6CFF]  DEFAULT (getdate()) FOR [OfferDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__5076B571]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Offers] ADD  CONSTRAINT [DF__stlRecrui__Creat__5076B571]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__516AD9AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Offers] ADD  CONSTRAINT [DF__stlRecrui__Creat__516AD9AA]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__525EFDE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Offers] ADD  CONSTRAINT [DF__stlRecrui__Updat__525EFDE3]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__5353221C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Offers] ADD  CONSTRAINT [DF__stlRecrui__Updat__5353221C]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Offers_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]'))
ALTER TABLE [dbo].[stlRecruiting_Offers]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Offers_stlRecruiting_Applications] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[stlRecruiting_Applications] ([ApplicationID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Offers_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]'))
ALTER TABLE [dbo].[stlRecruiting_Offers] CHECK CONSTRAINT [FK_stlRecruiting_Offers_stlRecruiting_Applications]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Statu__4F829138]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]'))
ALTER TABLE [dbo].[stlRecruiting_Offers]  WITH CHECK ADD  CONSTRAINT [CK__stlRecrui__Statu__4F829138] CHECK  (([status]='Withdrawn' OR [status]='Rejected' OR [status]='Accepted' OR [status]='Extended'))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Statu__4F829138]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Offers]'))
ALTER TABLE [dbo].[stlRecruiting_Offers] CHECK CONSTRAINT [CK__stlRecrui__Statu__4F829138]
