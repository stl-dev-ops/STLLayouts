SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incentMinPerBox]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incentMinPerBox](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[minPerBox] [int] NOT NULL,
 CONSTRAINT [PK_incentMinPerBox] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMinPerBox_vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMinPerBox] ADD  CONSTRAINT [DF_incentMinPerBox_vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incentMinPerBox_minPerBox]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incentMinPerBox] ADD  CONSTRAINT [DF_incentMinPerBox_minPerBox]  DEFAULT ((0)) FOR [minPerBox]
END

