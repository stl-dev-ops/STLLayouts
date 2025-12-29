SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBA_RDCustomer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBA_RDCustomer](
	[stlba_RDCustomerID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[GLAccount] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlBA_RDCustomer] PRIMARY KEY CLUSTERED 
(
	[stlba_RDCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_RDCustomer_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_RDCustomer] ADD  CONSTRAINT [DF_stlBA_RDCustomer_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_RDCustomer_GLAccount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_RDCustomer] ADD  CONSTRAINT [DF_stlBA_RDCustomer_GLAccount]  DEFAULT ('') FOR [GLAccount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_RDCustomer_tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_RDCustomer] ADD  CONSTRAINT [DF_stlBA_RDCustomer_tstval05]  DEFAULT ('') FOR [tstval05]
END

