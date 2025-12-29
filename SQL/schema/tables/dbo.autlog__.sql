SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autlog__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autlog__](
	[aut__bsb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__bsb] [int] NOT NULL,
	[aut__tbo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__tbo] [int] NOT NULL,
	[aut__lvo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__lvo] [int] NOT NULL,
	[aut_foa_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foa_] [int] NOT NULL,
	[aut_foab] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foab] [int] NOT NULL,
	[aut__grb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__grb] [int] NOT NULL,
	[aut__grs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__grs] [int] NOT NULL,
	[aut__tbg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__tbg] [int] NOT NULL,
	[aut__lvr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__lvr] [int] NOT NULL,
	[aut_fgr_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgr_] [int] NOT NULL,
	[aut_fgrb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgrb] [int] NOT NULL,
	[aut_pntf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pntf] [int] NOT NULL,
	[aut_pntb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pntb] [int] NOT NULL,
	[aut_pnt1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pnt1] [int] NOT NULL,
	[aut_afor] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afor] [int] NOT NULL,
	[aut_bsto] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_bsto] [int] NOT NULL,
	[volg_boe] [int] NOT NULL,
	[a_nr_boe] [int] NOT NULL,
	[aut_faa1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faa1] [int] NOT NULL,
	[aut_faa2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faa2] [int] NOT NULL,
	[aut_faa3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faa3] [int] NOT NULL,
	[aut_faa4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faa4] [int] NOT NULL,
	[aut_faa5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faa5] [int] NOT NULL,
	[lokoaref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpoaref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekoaref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onv__rk2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokgrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpgrref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekgrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkg__rk2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekaaref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pnt_cntu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut_foa1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foa1] [int] NOT NULL,
	[aut_foa2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foa2] [int] NOT NULL,
	[aut_foa4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foa4] [int] NOT NULL,
	[aut_foa5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_foa5] [int] NOT NULL,
	[aut_fgr1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgr1] [int] NOT NULL,
	[aut_fgr3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgr3] [int] NOT NULL,
	[aut_fgr4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgr4] [int] NOT NULL,
	[aut_fgr5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fgr5] [int] NOT NULL,
	[aut_klas] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_klas] [int] NOT NULL,
	[aut__kor] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__kor] [int] NOT NULL,
	[vol__fak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__pal] [int] NOT NULL,
	[vlg__hlf] [int] NOT NULL,
	[ctrl_akp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[agrldakp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aprldakp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arektref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_akp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__lnk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exinfafk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autlogi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__bsb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__bsb]  DEFAULT ('') FOR [aut__bsb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__bsb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__bsb]  DEFAULT ((0)) FOR [vlg__bsb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__tbo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__tbo]  DEFAULT ('') FOR [aut__tbo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__tbo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__tbo]  DEFAULT ((0)) FOR [vlg__tbo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__lvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__lvo]  DEFAULT ('') FOR [aut__lvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__lvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__lvo]  DEFAULT ((0)) FOR [vlg__lvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foa_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foa_]  DEFAULT ('') FOR [aut_foa_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foa_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foa_]  DEFAULT ((0)) FOR [vlg_foa_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foab]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foab]  DEFAULT ('') FOR [aut_foab]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foab]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foab]  DEFAULT ((0)) FOR [vlg_foab]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__grb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__grb]  DEFAULT ('') FOR [aut__grb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__grb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__grb]  DEFAULT ((0)) FOR [vlg__grb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__grs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__grs]  DEFAULT ('') FOR [aut__grs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__grs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__grs]  DEFAULT ((0)) FOR [vlg__grs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__tbg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__tbg]  DEFAULT ('') FOR [aut__tbg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__tbg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__tbg]  DEFAULT ((0)) FOR [vlg__tbg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__lvr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__lvr]  DEFAULT ('') FOR [aut__lvr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__lvr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__lvr]  DEFAULT ((0)) FOR [vlg__lvr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgr_]  DEFAULT ('') FOR [aut_fgr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgr_]  DEFAULT ((0)) FOR [vlg_fgr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgrb]  DEFAULT ('') FOR [aut_fgrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgrb]  DEFAULT ((0)) FOR [vlg_fgrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_pntf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_pntf]  DEFAULT ('') FOR [aut_pntf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_pntf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_pntf]  DEFAULT ((0)) FOR [vlg_pntf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_pntb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_pntb]  DEFAULT ('') FOR [aut_pntb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_pntb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_pntb]  DEFAULT ((0)) FOR [vlg_pntb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_pnt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_pnt1]  DEFAULT ('') FOR [aut_pnt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_pnt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_pnt1]  DEFAULT ((0)) FOR [vlg_pnt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_afor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_afor]  DEFAULT ('') FOR [aut_afor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_afor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_afor]  DEFAULT ((0)) FOR [vlg_afor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_bsto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_bsto]  DEFAULT ('') FOR [aut_bsto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_bsto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_bsto]  DEFAULT ((0)) FOR [vlg_bsto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__volg_boe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__volg_boe]  DEFAULT ((0)) FOR [volg_boe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__a_nr_boe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__a_nr_boe]  DEFAULT ((0)) FOR [a_nr_boe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_faa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_faa1]  DEFAULT ('') FOR [aut_faa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_faa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_faa1]  DEFAULT ((0)) FOR [vlg_faa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_faa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_faa2]  DEFAULT ('') FOR [aut_faa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_faa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_faa2]  DEFAULT ((0)) FOR [vlg_faa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_faa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_faa3]  DEFAULT ('') FOR [aut_faa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_faa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_faa3]  DEFAULT ((0)) FOR [vlg_faa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_faa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_faa4]  DEFAULT ('') FOR [aut_faa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_faa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_faa4]  DEFAULT ((0)) FOR [vlg_faa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_faa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_faa5]  DEFAULT ('') FOR [aut_faa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_faa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_faa5]  DEFAULT ((0)) FOR [vlg_faa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__lokoaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__lokoaref]  DEFAULT ('') FOR [lokoaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__knpoaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__knpoaref]  DEFAULT ('') FOR [knpoaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__rekoaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__rekoaref]  DEFAULT ('') FOR [rekoaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__onv__rk2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__onv__rk2]  DEFAULT ('') FOR [onv__rk2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__lokgrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__lokgrref]  DEFAULT ('') FOR [lokgrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__knpgrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__knpgrref]  DEFAULT ('') FOR [knpgrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__rekgrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__rekgrref]  DEFAULT ('') FOR [rekgrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__fkg__rk2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__fkg__rk2]  DEFAULT ('') FOR [fkg__rk2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__rekaaref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__rekaaref]  DEFAULT ('') FOR [rekaaref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__pnt_cntu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__pnt_cntu]  DEFAULT ('') FOR [pnt_cntu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foa1]  DEFAULT ('') FOR [aut_foa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foa1]  DEFAULT ((0)) FOR [vlg_foa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foa2]  DEFAULT ('') FOR [aut_foa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foa2]  DEFAULT ((0)) FOR [vlg_foa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foa4]  DEFAULT ('') FOR [aut_foa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foa4]  DEFAULT ((0)) FOR [vlg_foa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_foa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_foa5]  DEFAULT ('') FOR [aut_foa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_foa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_foa5]  DEFAULT ((0)) FOR [vlg_foa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgr1]  DEFAULT ('') FOR [aut_fgr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgr1]  DEFAULT ((0)) FOR [vlg_fgr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgr3]  DEFAULT ('') FOR [aut_fgr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgr3]  DEFAULT ((0)) FOR [vlg_fgr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgr4]  DEFAULT ('') FOR [aut_fgr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgr4]  DEFAULT ((0)) FOR [vlg_fgr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_fgr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_fgr5]  DEFAULT ('') FOR [aut_fgr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_fgr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_fgr5]  DEFAULT ((0)) FOR [vlg_fgr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut_klas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut_klas]  DEFAULT ('') FOR [aut_klas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg_klas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg_klas]  DEFAULT ((0)) FOR [vlg_klas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aut__kor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aut__kor]  DEFAULT ('') FOR [aut__kor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__kor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__kor]  DEFAULT ((0)) FOR [vlg__kor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vol__fak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vol__fak]  DEFAULT ('') FOR [vol__fak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__pal]  DEFAULT ((0)) FOR [vlg__pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__vlg__hlf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__vlg__hlf]  DEFAULT ((0)) FOR [vlg__hlf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__ctrl_akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__ctrl_akp]  DEFAULT ('') FOR [ctrl_akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__agrldakp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__agrldakp]  DEFAULT ('') FOR [agrldakp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__aprldakp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__aprldakp]  DEFAULT ('') FOR [aprldakp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__arektref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__arektref]  DEFAULT ('') FOR [arektref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__dgbk_akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__dgbk_akp]  DEFAULT ('') FOR [dgbk_akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__btw__lnk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__btw__lnk]  DEFAULT ('') FOR [btw__lnk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autlog__exinfafk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autlog__] ADD  CONSTRAINT [DF_autlog__exinfafk]  DEFAULT ('') FOR [exinfafk]
END

