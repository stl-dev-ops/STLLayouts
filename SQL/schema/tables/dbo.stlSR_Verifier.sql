SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_Verifier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_Verifier](
	[stlSR_VerifierID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSR_Verifier] PRIMARY KEY CLUSTERED 
(
	[stlSR_VerifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_Verifier_userName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_Verifier] ADD  CONSTRAINT [DF_stlSR_Verifier_userName]  DEFAULT ('') FOR [userName]
END

