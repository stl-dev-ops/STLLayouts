SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMX_Lock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMX_Lock](
	[stlMX_LockID] [int] IDENTITY(1,1) NOT NULL,
	[lockID] [int] NOT NULL,
	[lockDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlMX_Lock] PRIMARY KEY CLUSTERED 
(
	[stlMX_LockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMX_Lock_lockID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMX_Lock] ADD  CONSTRAINT [DF_stlMX_Lock_lockID]  DEFAULT ((0)) FOR [lockID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMX_Lock_lockDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMX_Lock] ADD  CONSTRAINT [DF_stlMX_Lock_lockDt]  DEFAULT (getdate()) FOR [lockDt]
END

