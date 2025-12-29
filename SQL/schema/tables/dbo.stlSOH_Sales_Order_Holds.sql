SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSOH_Sales_Order_Holds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSOH_Sales_Order_Holds](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[HoldDate] [datetime] NOT NULL,
	[UserName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSOH_Sales_Order_Holds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSOH_Sales_Order_Holds_HoldDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSOH_Sales_Order_Holds] ADD  CONSTRAINT [DF_stlSOH_Sales_Order_Holds_HoldDate]  DEFAULT (getdate()) FOR [HoldDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSOH_Sales_Order_Holds_User]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSOH_Sales_Order_Holds] ADD  CONSTRAINT [DF_stlSOH_Sales_Order_Holds_User]  DEFAULT (suser_sname()) FOR [UserName]
END

