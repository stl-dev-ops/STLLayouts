SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afrant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afrant__](
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_aantal] [float] NOT NULL,
	[l_aantal] [float] NOT NULL,
	[i_aantal] [float] NOT NULL,
	[p_aantal] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afrant_1] PRIMARY KEY CLUSTERED 
(
	[afr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrant__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrant__] ADD  CONSTRAINT [DF_afrant__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrant__a_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrant__] ADD  CONSTRAINT [DF_afrant__a_aantal]  DEFAULT ((0)) FOR [a_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrant__l_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrant__] ADD  CONSTRAINT [DF_afrant__l_aantal]  DEFAULT ((0)) FOR [l_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrant__i_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrant__] ADD  CONSTRAINT [DF_afrant__i_aantal]  DEFAULT ((0)) FOR [i_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrant__p_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrant__] ADD  CONSTRAINT [DF_afrant__p_aantal]  DEFAULT ((0)) FOR [p_aantal]
END

