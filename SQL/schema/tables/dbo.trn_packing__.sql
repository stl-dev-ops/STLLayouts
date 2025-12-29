SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trn_packing__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trn_packing__](
	[trn_packing_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[type_packing] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[length] [float] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[gross_weight] [float] NOT NULL,
	[volume] [float] NOT NULL,
	[content_txt] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [trn_packingi0] PRIMARY KEY CLUSTERED 
(
	[trn_packing_id] ASC,
	[sequence_nr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__trn_packing_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__trn_packing_id]  DEFAULT ((0)) FOR [trn_packing_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__quantity]  DEFAULT ((0)) FOR [quantity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__type_packing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__type_packing]  DEFAULT ('') FOR [type_packing]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__length]  DEFAULT ((0)) FOR [length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__width]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__width]  DEFAULT ((0)) FOR [width]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__height]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__height]  DEFAULT ((0)) FOR [height]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__gross_weight]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__gross_weight]  DEFAULT ((0)) FOR [gross_weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__volume]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__volume]  DEFAULT ((0)) FOR [volume]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__content_txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__content_txt]  DEFAULT ('') FOR [content_txt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__crea_jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__crea_jobnr_vw]  DEFAULT ('') FOR [crea_jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__crea_ori]  DEFAULT ('0') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trn_packing__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trn_packing__] ADD  CONSTRAINT [DF_trn_packing__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

