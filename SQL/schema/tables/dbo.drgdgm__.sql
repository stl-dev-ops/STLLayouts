SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drgdgm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drgdgm__](
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[digmedrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drgdgmi0] PRIMARY KEY CLUSTERED 
(
	[drg__ref] ASC,
	[srv__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgdgm__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgdgm__] ADD  CONSTRAINT [DF_drgdgm__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgdgm__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgdgm__] ADD  CONSTRAINT [DF_drgdgm__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgdgm__digmedrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgdgm__] ADD  CONSTRAINT [DF_drgdgm__digmedrf]  DEFAULT ('') FOR [digmedrf]
END

