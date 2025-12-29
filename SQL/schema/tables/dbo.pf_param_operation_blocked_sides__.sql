SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_operation_blocked_sides__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_operation_blocked_sides__](
	[operation_id] [int] NOT NULL,
	[side] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_operation_blocked_sidesi0] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC,
	[side] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_blocked_sides__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_blocked_sides__] ADD  CONSTRAINT [DF_pf_param_operation_blocked_sides__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_blocked_sides__side]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_blocked_sides__] ADD  CONSTRAINT [DF_pf_param_operation_blocked_sides__side]  DEFAULT ('') FOR [side]
END

