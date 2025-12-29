SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspttl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspttl__](
	[taal____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mvrv] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mr_v] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_jfrv] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_andv] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mvra] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mr_a] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_jfra] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_anda] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mvr1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mr_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_jfr1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_and1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mvr2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_mr_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_jfr2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ttl_and2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[gemark__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[n_gemark] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak_____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[crdtn___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak____c] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[crdtn__c] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak____b] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[crdtn__b] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__0] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__a] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__b] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fltyp__c] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[frtb___1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[frtb___2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[frtb___3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn_____] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn____c] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__vol] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_ovol] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[korting_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_taal] PRIMARY KEY CLUSTERED 
(
	[taal____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__taal____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__taal____]  DEFAULT ('') FOR [taal____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mvrv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mvrv]  DEFAULT ('') FOR [ttl_mvrv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mr_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mr_v]  DEFAULT ('') FOR [ttl_mr_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_jfrv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_jfrv]  DEFAULT ('') FOR [ttl_jfrv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_andv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_andv]  DEFAULT ('') FOR [ttl_andv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mvra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mvra]  DEFAULT ('') FOR [ttl_mvra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mr_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mr_a]  DEFAULT ('') FOR [ttl_mr_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_jfra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_jfra]  DEFAULT ('') FOR [ttl_jfra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_anda]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_anda]  DEFAULT ('') FOR [ttl_anda]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mvr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mvr1]  DEFAULT ('') FOR [ttl_mvr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mr_1]  DEFAULT ('') FOR [ttl_mr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_jfr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_jfr1]  DEFAULT ('') FOR [ttl_jfr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_and1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_and1]  DEFAULT ('') FOR [ttl_and1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mvr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mvr2]  DEFAULT ('') FOR [ttl_mvr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_mr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_mr_2]  DEFAULT ('') FOR [ttl_mr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_jfr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_jfr2]  DEFAULT ('') FOR [ttl_jfr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__ttl_and2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__ttl_and2]  DEFAULT ('') FOR [ttl_and2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__gemark__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__gemark__]  DEFAULT ('') FOR [gemark__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__n_gemark]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__n_gemark]  DEFAULT ('') FOR [n_gemark]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fak_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fak_____]  DEFAULT ('') FOR [fak_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__crdtn___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__crdtn___]  DEFAULT ('') FOR [crdtn___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fak____c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fak____c]  DEFAULT ('') FOR [fak____c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__crdtn__c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__crdtn__c]  DEFAULT ('') FOR [crdtn__c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fak____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fak____b]  DEFAULT ('') FOR [fak____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__crdtn__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__crdtn__b]  DEFAULT ('') FOR [crdtn__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__0]  DEFAULT ('') FOR [fltyp__0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__1]  DEFAULT ('') FOR [fltyp__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__2]  DEFAULT ('') FOR [fltyp__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__3]  DEFAULT ('') FOR [fltyp__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__4]  DEFAULT ('') FOR [fltyp__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__5]  DEFAULT ('') FOR [fltyp__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__6]  DEFAULT ('') FOR [fltyp__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__7]  DEFAULT ('') FOR [fltyp__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__8]  DEFAULT ('') FOR [fltyp__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__9]  DEFAULT ('') FOR [fltyp__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__a]  DEFAULT ('') FOR [fltyp__a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__b]  DEFAULT ('') FOR [fltyp__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__fltyp__c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__fltyp__c]  DEFAULT ('') FOR [fltyp__c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__frtb___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__frtb___1]  DEFAULT ('') FOR [frtb___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__frtb___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__frtb___2]  DEFAULT ('') FOR [frtb___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__frtb___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__frtb___3]  DEFAULT ('') FOR [frtb___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__lbn_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__lbn_____]  DEFAULT ('') FOR [lbn_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__lbn____c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__lbn____c]  DEFAULT ('') FOR [lbn____c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__lev__vol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__lev__vol]  DEFAULT ('') FOR [lev__vol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__lev_ovol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__lev_ovol]  DEFAULT ('') FOR [lev_ovol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_1]  DEFAULT ('') FOR [status_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_2]  DEFAULT ('') FOR [status_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_3]  DEFAULT ('') FOR [status_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_4]  DEFAULT ('') FOR [status_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_5]  DEFAULT ('') FOR [status_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_6]  DEFAULT ('') FOR [status_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_7]  DEFAULT ('') FOR [status_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_8]  DEFAULT ('') FOR [status_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__status_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__status_9]  DEFAULT ('') FOR [status_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aspttl__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspttl__] ADD  CONSTRAINT [DF_aspttl__korting_]  DEFAULT ('') FOR [korting_]
END

