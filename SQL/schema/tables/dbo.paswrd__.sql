SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paswrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[paswrd__](
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bprkdgbk] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[username] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[log_name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[paswrd__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[log_pass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[isolang_] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[indienst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sysbehr_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[webuser_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[funktie_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[email___] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtpuser] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtppass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[mail__cc] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[gpf_edit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_load] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_edit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar__lbw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[formload] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[formedit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[webauth_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prysinfo] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[web_kons] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[web_grid] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt_excl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__fix] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos2_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos2_fix] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos3_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos3_fix] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_prn_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mtu_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[spfunkt_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[voo__std] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[online_q] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__web] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[multiweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[acc_webc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[days_web] [int] NOT NULL,
	[mobile__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mobcount] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mobcusto] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mob_plan] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gpf_cust] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml34ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[editorws] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[editorvp] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[domain__] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [paswrdi0] PRIMARY KEY CLUSTERED 
(
	[usernbr_] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[paswrd__]') AND name = N'paswrdi1')
CREATE NONCLUSTERED INDEX [paswrdi1] ON [dbo].[paswrd__]
(
	[log_name] ASC,
	[webuser_] ASC,
	[indienst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[paswrd__]') AND name = N'paswrdi2')
CREATE NONCLUSTERED INDEX [paswrdi2] ON [dbo].[paswrd__]
(
	[kla__ref] ASC,
	[knp__ref] ASC,
	[webuser_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[paswrd__]') AND name = N'paswrdi3')
CREATE NONCLUSTERED INDEX [paswrdi3] ON [dbo].[paswrd__]
(
	[username] ASC,
	[indienst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__bprkdgbk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__bprkdgbk]  DEFAULT ('') FOR [bprkdgbk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__username]  DEFAULT ('') FOR [username]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__log_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__log_name]  DEFAULT ('') FOR [log_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__paswrd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__paswrd__]  DEFAULT ('') FOR [paswrd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__log_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__log_pass]  DEFAULT ('') FOR [log_pass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__isolang_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__isolang_]  DEFAULT ('0') FOR [isolang_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__indienst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__indienst]  DEFAULT ('1') FOR [indienst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__sysbehr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__sysbehr_]  DEFAULT ('N') FOR [sysbehr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__pfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__pfl__ref]  DEFAULT ('') FOR [pfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__webuser_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__webuser_]  DEFAULT ('N') FOR [webuser_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__funktie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__funktie_]  DEFAULT ('') FOR [funktie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__email___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__email___]  DEFAULT ('') FOR [email___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__smtpuser]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__smtpuser]  DEFAULT ('') FOR [smtpuser]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__smtppass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__smtppass]  DEFAULT ('') FOR [smtppass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mail__cc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mail__cc]  DEFAULT ('') FOR [mail__cc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__gpf_edit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__gpf_edit]  DEFAULT ('0') FOR [gpf_edit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__bar_load]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__bar_load]  DEFAULT ('1') FOR [bar_load]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__bar_edit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__bar_edit]  DEFAULT ('1') FOR [bar_edit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__bar__lbw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__bar__lbw]  DEFAULT ('1') FOR [bar__lbw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__formload]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__formload]  DEFAULT ('1') FOR [formload]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__formedit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__formedit]  DEFAULT ('1') FOR [formedit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__webauth_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__webauth_]  DEFAULT ('3') FOR [webauth_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__prysinfo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__prysinfo]  DEFAULT ('N') FOR [prysinfo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__web_kons]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__web_kons]  DEFAULT ('1') FOR [web_kons]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__web_grid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__web_grid]  DEFAULT ('1') FOR [web_grid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__vrt_excl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__vrt_excl]  DEFAULT ('N') FOR [vrt_excl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dos__fix]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dos__fix]  DEFAULT ('Y') FOR [dos__fix]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dos2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dos2_ref]  DEFAULT ('') FOR [dos2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dos2_fix]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dos2_fix]  DEFAULT ('N') FOR [dos2_fix]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dos3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dos3_ref]  DEFAULT ('') FOR [dos3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__dos3_fix]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__dos3_fix]  DEFAULT ('N') FOR [dos3_fix]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__ref_prn_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__ref_prn_]  DEFAULT ('') FOR [ref_prn_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mtu_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mtu_____]  DEFAULT ('') FOR [mtu_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__spfunkt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__spfunkt_]  DEFAULT ('') FOR [spfunkt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__voo__std]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__voo__std]  DEFAULT ('1') FOR [voo__std]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__online_q]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__online_q]  DEFAULT ('Y') FOR [online_q]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__afg__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__afg__web]  DEFAULT ('Y') FOR [afg__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__multiweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__multiweb]  DEFAULT ('Y') FOR [multiweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__acc_webc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__acc_webc]  DEFAULT ('N') FOR [acc_webc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__days_web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__days_web]  DEFAULT ((30)) FOR [days_web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mobile__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mobile__]  DEFAULT ('N') FOR [mobile__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mobcount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mobcount]  DEFAULT ('N') FOR [mobcount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mobcusto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mobcusto]  DEFAULT ('N') FOR [mobcusto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__mob_plan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__mob_plan]  DEFAULT ('N') FOR [mob_plan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__gpf_cust]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__gpf_cust]  DEFAULT ('1') FOR [gpf_cust]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__eml34ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__eml34ref]  DEFAULT ('') FOR [eml34ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__editorws]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__editorws]  DEFAULT ('') FOR [editorws]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__editorvp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__editorvp]  DEFAULT ('') FOR [editorvp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_paswrd__domain__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[paswrd__] ADD  CONSTRAINT [DF_paswrd__domain__]  DEFAULT ('') FOR [domain__]
END

