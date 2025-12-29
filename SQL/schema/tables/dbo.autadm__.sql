SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autadm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autadm__](
	[aut_pstk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[deprprco] [float] NOT NULL,
	[mail_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlgsscc1] [int] NOT NULL,
	[vlgsscc2] [int] NOT NULL,
	[ord__dir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsubd1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsubd2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsubd3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsubd4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsubd5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_html] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__dir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasubd1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasubd2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasubd3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasubd4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasubd5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[levsubd1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[levsubd2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[levsubd3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[levsubd4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[levsubd5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__dir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__prf] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp_gang] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[save_att] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstvfacl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_pstk] [int] NOT NULL,
	[aut_ptrg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ptrg] [int] NOT NULL,
	[aut_ftel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_ftel] [int] NOT NULL,
	[aut_brie] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_brie] [int] NOT NULL,
	[aut_akti] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_akti] [int] NOT NULL,
	[aut_efak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_efak] [int] NOT NULL,
	[aut__afg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__afg] [int] NOT NULL,
	[aut_afgb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afgb] [int] NOT NULL,
	[aut_exin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_exin] [int] NOT NULL,
	[aut__bta] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__bta] [int] NOT NULL,
	[aut_afbn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afbn] [int] NOT NULL,
	[aut_afgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afgm] [int] NOT NULL,
	[aut_aflv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_aflv] [int] NOT NULL,
	[leverafg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_vrrd] [int] NOT NULL,
	[vlg_avrd] [int] NOT NULL,
	[vlg_hvrd] [int] NOT NULL,
	[aut_aflb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_aflb] [int] NOT NULL,
	[autafalb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlgafalb] [int] NOT NULL,
	[autafgan] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlgafgan] [int] NOT NULL,
	[aut_mrkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mrkt] [int] NOT NULL,
	[aut_afrb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afrb] [int] NOT NULL,
	[aut_mrka] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mrka] [int] NOT NULL,
	[aut_mrkv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mrkv] [int] NOT NULL,
	[aut_afgv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_afgv] [int] NOT NULL,
	[vlg__eml] [int] NOT NULL,
	[vlg__trn] [int] NOT NULL,
	[vlg_trnd] [int] NOT NULL,
	[vlg__toc] [int] NOT NULL,
	[cre__sto] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bta__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[favklaem] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[extemsrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fax___dr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxknpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxpkpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[voll_afg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__loc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stafflpr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlffabko] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ibsverkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak___wy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst_facl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgwblay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ont__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rma__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb__pdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl3] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl4] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl5] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl6] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl7] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl8] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfxmdl9] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt__lvb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[std__ond] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlopvlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__clc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__obg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__vrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_chef] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__web] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlovern] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_snel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__lok] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_naar] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlopvno] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_opvd] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__tec] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlcatec] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__tec] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvnmtec] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtp_srv] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtpport] [int] NOT NULL,
	[smtpuser] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtppass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtp_tls] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[smtpstrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut_mail] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_mail] [int] NOT NULL,
	[wrk__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg__oph] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[accoord_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blk__ing] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_uni] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgcltrc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgwyzig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg__lyn] [int] NOT NULL,
	[vlg_plyn] [int] NOT NULL,
	[fiat_bst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_xml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__bst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__uur] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levkzuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__trm] [int] NOT NULL,
	[lvb__ref] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz_klrz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[enr_klrz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prysvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordkopry] [int] NOT NULL,
	[bsbonvrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stafprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[viewstaf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrbstref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_bsbn] [int] NOT NULL,
	[vgl_tot1] [int] NOT NULL,
	[vgl_tot2] [int] NOT NULL,
	[vgl_tot3] [int] NOT NULL,
	[vgl_tot4] [int] NOT NULL,
	[oms_aant] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtdrkvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_afg] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[deprant1] [int] NOT NULL,
	[deprant2] [int] NOT NULL,
	[deprprc1] [float] NOT NULL,
	[deprprc2] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbkoref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_grp1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_grp2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_grp3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp_toew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst_vpak] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stockafr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tno_oms1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tno_oms2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tno_oms3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tno_oms4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[reshalff] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakorig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_orig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsvrsko] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[delvrsko] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsvrstg] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_facl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_fin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrit9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt11] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt12] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt13] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt14] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt15] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt16] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt17] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt18] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt19] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt20] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt21] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt22] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt23] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt24] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt25] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt26] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt27] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt28] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt29] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfcrt30] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_01] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_02] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_03] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_04] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_05] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_06] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_07] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_08] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_09] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_11] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_12] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_13] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_14] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_15] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_16] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_17] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_18] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_19] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_20] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_21] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_22] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_23] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_24] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_25] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_26] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_27] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_28] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_29] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_30] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_31] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_32] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_33] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_34] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_35] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_36] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_37] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_38] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_39] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_40] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_41] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_42] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_43] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_44] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tekst_45] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[tvl_oms1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[tvl_oms2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[word_bta] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[word_off] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[word_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[word_wdd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[isi_strt] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isi__pdf] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[isi_find] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[pdf_ctrl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pdf__dir] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam_port] [int] NOT NULL,
	[damadres] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam_user] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam_pass] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[edilvurl] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edilvprt] [int] NOT NULL,
	[edilvpr2] [int] NOT NULL,
	[edilvcer] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edilvkey] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edilvpas] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[edilvdir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[v6dirsms] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[sms__lbn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbnreply] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sms_wyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sms_cent] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokcalc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodmeth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_bon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbnafg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdb_mak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdb_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_jdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_ink] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_cmb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodpant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodtoew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodplan] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sysemail] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[sysdbpct] [int] NOT NULL,
	[oph__lyn] [int] NOT NULL,
	[oph__afg] [int] NOT NULL,
	[chvrzdat] [int] NOT NULL,
	[gang_grp] [int] NOT NULL,
	[gang_grp__ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afrlvdet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afrfcdet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__typ] [int] NOT NULL,
	[resprtyp] [int] NOT NULL,
	[ofb_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[obv_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ont_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rma_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_filename] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autadmi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_pstk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_pstk]  DEFAULT ('') FOR [aut_pstk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__deprprco]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__deprprco]  DEFAULT ((0)) FOR [deprprco]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__mail_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__mail_tst]  DEFAULT ('') FOR [mail_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlgsscc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlgsscc1]  DEFAULT ((0)) FOR [vlgsscc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlgsscc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlgsscc2]  DEFAULT ((0)) FOR [vlgsscc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ord__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ord__dir]  DEFAULT ('') FOR [ord__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordsubd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordsubd1]  DEFAULT ('') FOR [ordsubd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordsubd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordsubd2]  DEFAULT ('') FOR [ordsubd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordsubd3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordsubd3]  DEFAULT ('') FOR [ordsubd3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordsubd4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordsubd4]  DEFAULT ('') FOR [ordsubd4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordsubd5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordsubd5]  DEFAULT ('') FOR [ordsubd5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ord_html]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ord_html]  DEFAULT ('') FOR [ord_html]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__kla__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__kla__dir]  DEFAULT ('') FOR [kla__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__klasubd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__klasubd1]  DEFAULT ('') FOR [klasubd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__klasubd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__klasubd2]  DEFAULT ('') FOR [klasubd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__klasubd3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__klasubd3]  DEFAULT ('') FOR [klasubd3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__klasubd4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__klasubd4]  DEFAULT ('') FOR [klasubd4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__klasubd5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__klasubd5]  DEFAULT ('') FOR [klasubd5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lev__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lev__dir]  DEFAULT ('') FOR [lev__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levsubd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levsubd1]  DEFAULT ('') FOR [levsubd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levsubd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levsubd2]  DEFAULT ('') FOR [levsubd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levsubd3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levsubd3]  DEFAULT ('') FOR [levsubd3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levsubd4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levsubd4]  DEFAULT ('') FOR [levsubd4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levsubd5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levsubd5]  DEFAULT ('') FOR [levsubd5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__shp__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__shp__dir]  DEFAULT ('') FOR [shp__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__shp__prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__shp__prf]  DEFAULT ('') FOR [shp__prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__shp_gang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__shp_gang]  DEFAULT ('') FOR [shp_gang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__save_att]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__save_att]  DEFAULT ('') FOR [save_att]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bstvfacl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bstvfacl]  DEFAULT ('') FOR [bstvfacl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bst__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bst__det]  DEFAULT ('') FOR [bst__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_pstk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_pstk]  DEFAULT ((0)) FOR [vlg_pstk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_ptrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_ptrg]  DEFAULT ('') FOR [aut_ptrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_ptrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_ptrg]  DEFAULT ((0)) FOR [vlg_ptrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_ftel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_ftel]  DEFAULT ('') FOR [aut_ftel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_ftel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_ftel]  DEFAULT ((0)) FOR [vlg_ftel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_brie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_brie]  DEFAULT ('') FOR [aut_brie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_brie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_brie]  DEFAULT ((0)) FOR [vlg_brie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_akti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_akti]  DEFAULT ('') FOR [aut_akti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_akti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_akti]  DEFAULT ((0)) FOR [vlg_akti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_efak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_efak]  DEFAULT ('') FOR [aut_efak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_efak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_efak]  DEFAULT ((0)) FOR [vlg_efak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut__afg]  DEFAULT ('') FOR [aut__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__afg]  DEFAULT ((0)) FOR [vlg__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_afgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_afgb]  DEFAULT ('') FOR [aut_afgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_afgb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_afgb]  DEFAULT ((0)) FOR [vlg_afgb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_exin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_exin]  DEFAULT ('') FOR [aut_exin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_exin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_exin]  DEFAULT ((0)) FOR [vlg_exin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut__bta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut__bta]  DEFAULT ('') FOR [aut__bta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__bta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__bta]  DEFAULT ((0)) FOR [vlg__bta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_afbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_afbn]  DEFAULT ('') FOR [aut_afbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_afbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_afbn]  DEFAULT ((0)) FOR [vlg_afbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_afgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_afgm]  DEFAULT ('') FOR [aut_afgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_afgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_afgm]  DEFAULT ((0)) FOR [vlg_afgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_aflv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_aflv]  DEFAULT ('') FOR [aut_aflv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_aflv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_aflv]  DEFAULT ((0)) FOR [vlg_aflv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__leverafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__leverafg]  DEFAULT ('') FOR [leverafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_vrrd]  DEFAULT ((0)) FOR [vlg_vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_avrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_avrd]  DEFAULT ((0)) FOR [vlg_avrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_hvrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_hvrd]  DEFAULT ((0)) FOR [vlg_hvrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_aflb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_aflb]  DEFAULT ('') FOR [aut_aflb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_aflb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_aflb]  DEFAULT ((0)) FOR [vlg_aflb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__autafalb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__autafalb]  DEFAULT ('') FOR [autafalb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlgafalb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlgafalb]  DEFAULT ((0)) FOR [vlgafalb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__autafgan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__autafgan]  DEFAULT ('') FOR [autafgan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlgafgan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlgafgan]  DEFAULT ((0)) FOR [vlgafgan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_mrkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_mrkt]  DEFAULT ('') FOR [aut_mrkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_mrkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_mrkt]  DEFAULT ((0)) FOR [vlg_mrkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_afrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_afrb]  DEFAULT ('') FOR [aut_afrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_afrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_afrb]  DEFAULT ((0)) FOR [vlg_afrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_mrka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_mrka]  DEFAULT ('') FOR [aut_mrka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_mrka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_mrka]  DEFAULT ((0)) FOR [vlg_mrka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_mrkv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_mrkv]  DEFAULT ('') FOR [aut_mrkv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_mrkv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_mrkv]  DEFAULT ((0)) FOR [vlg_mrkv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_afgv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_afgv]  DEFAULT ('') FOR [aut_afgv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_afgv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_afgv]  DEFAULT ((0)) FOR [vlg_afgv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__eml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__eml]  DEFAULT ((0)) FOR [vlg__eml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__trn]  DEFAULT ((0)) FOR [vlg__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_trnd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_trnd]  DEFAULT ((0)) FOR [vlg_trnd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__toc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__toc]  DEFAULT ((0)) FOR [vlg__toc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__cre__sto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__cre__sto]  DEFAULT ('') FOR [cre__sto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bta__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bta__srt]  DEFAULT ('') FOR [bta__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__favklaem]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__favklaem]  DEFAULT ('') FOR [favklaem]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__extemsrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__extemsrt]  DEFAULT ('') FOR [extemsrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fax___dr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fax___dr]  DEFAULT ('') FOR [fax___dr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__faxknpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__faxknpdr]  DEFAULT ('') FOR [faxknpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__faxpkpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__faxpkpdr]  DEFAULT ('') FOR [faxpkpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__voll_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__voll_afg]  DEFAULT ('') FOR [voll_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afg__loc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afg__loc]  DEFAULT ('') FOR [afg__loc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__stafflpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__stafflpr]  DEFAULT ('') FOR [stafflpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__hlffabko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__hlffabko]  DEFAULT ('') FOR [hlffabko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ibsverkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ibsverkp]  DEFAULT ('') FOR [ibsverkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fak___wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fak___wy]  DEFAULT ('') FOR [fak___wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bst_facl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bst_facl]  DEFAULT ('') FOR [bst_facl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afgwblay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afgwblay]  DEFAULT ('') FOR [afgwblay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ont__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ont__lay]  DEFAULT ('') FOR [ont__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bst__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bst__lay]  DEFAULT ('') FOR [bst__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__uit__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__uit__lay]  DEFAULT ('') FOR [uit__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lvb__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lvb__lay]  DEFAULT ('') FOR [lvb__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__rma__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__rma__lay]  DEFAULT ('') FOR [rma__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afr__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afr__lay]  DEFAULT ('') FOR [afr__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lvb__pdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lvb__pdf]  DEFAULT ('') FOR [lvb__pdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl1]  DEFAULT ('') FOR [prfxmdl1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl2]  DEFAULT ('') FOR [prfxmdl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl3]  DEFAULT ('') FOR [prfxmdl3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl4]  DEFAULT ('') FOR [prfxmdl4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl5]  DEFAULT ('') FOR [prfxmdl5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl6]  DEFAULT ('') FOR [prfxmdl6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl7]  DEFAULT ('') FOR [prfxmdl7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl8]  DEFAULT ('') FOR [prfxmdl8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prfxmdl9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prfxmdl9]  DEFAULT ('') FOR [prfxmdl9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__srt__lvb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__srt__lvb]  DEFAULT ('') FOR [srt__lvb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__std__ond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__std__ond]  DEFAULT ('') FOR [std__ond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__emlopvlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__emlopvlg]  DEFAULT ('') FOR [emlopvlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__clc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__clc]  DEFAULT ('') FOR [eml__clc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__obg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__obg]  DEFAULT ('') FOR [eml__obg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__vrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__vrt]  DEFAULT ('') FOR [eml__vrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml_chef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml_chef]  DEFAULT ('') FOR [eml_chef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__web]  DEFAULT ('') FOR [eml__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__emlovern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__emlovern]  DEFAULT ('') FOR [emlovern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml_snel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml_snel]  DEFAULT ('') FOR [eml_snel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__lok]  DEFAULT ('') FOR [eml__lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__knp]  DEFAULT ('') FOR [eml__knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml_naar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml_naar]  DEFAULT ('') FOR [eml_naar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__emlopvno]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__emlopvno]  DEFAULT ('') FOR [emlopvno]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml_opvd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml_opvd]  DEFAULT ('') FOR [eml_opvd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__tec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__tec]  DEFAULT ('') FOR [eml__tec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__emlcatec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__emlcatec]  DEFAULT ('') FOR [emlcatec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__opv__tec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__opv__tec]  DEFAULT ('') FOR [opv__tec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__opvnmtec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__opvnmtec]  DEFAULT ('') FOR [opvnmtec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__eml__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__eml__srt]  DEFAULT ('') FOR [eml__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtp_srv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtp_srv]  DEFAULT ('') FOR [smtp_srv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtpport]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtpport]  DEFAULT ((0)) FOR [smtpport]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtpuser]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtpuser]  DEFAULT ('') FOR [smtpuser]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtppass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtppass]  DEFAULT ('') FOR [smtppass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtp_tls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtp_tls]  DEFAULT ('') FOR [smtp_tls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__smtpstrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__smtpstrt]  DEFAULT ('') FOR [smtpstrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__aut_mail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__aut_mail]  DEFAULT ('') FOR [aut_mail]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_mail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_mail]  DEFAULT ((0)) FOR [vlg_mail]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__wrk__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__wrk__vrs]  DEFAULT ('') FOR [wrk__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vrg__oph]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vrg__oph]  DEFAULT ('') FOR [vrg__oph]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__accoord_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__accoord_]  DEFAULT ('') FOR [accoord_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__blk__ing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__blk__ing]  DEFAULT ('') FOR [blk__ing]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afg2_uni]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afg2_uni]  DEFAULT ('') FOR [afg2_uni]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afgcltrc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afgcltrc]  DEFAULT ('') FOR [afgcltrc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afgwyzig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afgwyzig]  DEFAULT ('') FOR [afgwyzig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg__lyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg__lyn]  DEFAULT ((0)) FOR [vlg__lyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_plyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_plyn]  DEFAULT ((0)) FOR [vlg_plyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fiat_bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fiat_bst]  DEFAULT ('') FOR [fiat_bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fiat_xml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fiat_xml]  DEFAULT ('') FOR [fiat_xml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lyn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lyn__srt]  DEFAULT ('') FOR [lyn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ing__bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ing__bst]  DEFAULT ('') FOR [ing__bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lev__uur]  DEFAULT ('') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__levkzuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__levkzuur]  DEFAULT ('') FOR [levkzuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lev__trm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lev__trm]  DEFAULT ((0)) FOR [lev__trm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lvb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lvb__ref]  DEFAULT ('') FOR [lvb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vrz_klrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vrz_klrz]  DEFAULT ('') FOR [vrz_klrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__enr_klrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__enr_klrz]  DEFAULT ('') FOR [enr_klrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prysvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prysvast]  DEFAULT ('') FOR [prysvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ordkopry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ordkopry]  DEFAULT ((0)) FOR [ordkopry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bsbonvrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bsbonvrd]  DEFAULT ('') FOR [bsbonvrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__stafprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__stafprys]  DEFAULT ('') FOR [stafprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__viewstaf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__viewstaf]  DEFAULT ('') FOR [viewstaf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__nrbstref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__nrbstref]  DEFAULT ('') FOR [nrbstref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vlg_bsbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vlg_bsbn]  DEFAULT ((0)) FOR [vlg_bsbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vgl_tot1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vgl_tot1]  DEFAULT ((0)) FOR [vgl_tot1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vgl_tot2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vgl_tot2]  DEFAULT ((0)) FOR [vgl_tot2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vgl_tot3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vgl_tot3]  DEFAULT ((0)) FOR [vgl_tot3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vgl_tot4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vgl_tot4]  DEFAULT ((0)) FOR [vgl_tot4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__srtdrkvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__srtdrkvl]  DEFAULT ('') FOR [srtdrkvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prkl_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prkl_afg]  DEFAULT ('') FOR [prkl_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__deprant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__deprant1]  DEFAULT ((0)) FOR [deprant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__deprant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__deprant2]  DEFAULT ((0)) FOR [deprant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__deprprc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__deprprc1]  DEFAULT ((0)) FOR [deprprc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__deprprc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__deprprc2]  DEFAULT ((0)) FOR [deprprc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dgbkoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dgbkoref]  DEFAULT ('') FOR [dgbkoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fac_grp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fac_grp1]  DEFAULT ('') FOR [fac_grp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fac_grp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fac_grp2]  DEFAULT ('') FOR [fac_grp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fac_grp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fac_grp3]  DEFAULT ('') FOR [fac_grp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__grp_toew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__grp_toew]  DEFAULT ('') FOR [grp_toew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__grp__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__grp__ord]  DEFAULT ('') FOR [grp__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bst_vpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bst_vpak]  DEFAULT ('') FOR [bst_vpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__stockafr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__stockafr]  DEFAULT ('') FOR [stockafr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tno_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tno_oms1]  DEFAULT ('') FOR [tno_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tno_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tno_oms2]  DEFAULT ('') FOR [tno_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tno_oms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tno_oms3]  DEFAULT ('') FOR [tno_oms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tno_oms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tno_oms4]  DEFAULT ('') FOR [tno_oms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__reshalff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__reshalff]  DEFAULT ('') FOR [reshalff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__vpakorig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__vpakorig]  DEFAULT ('') FOR [vpakorig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__oms_orig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__oms_orig]  DEFAULT ('') FOR [oms_orig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__omsvrsko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__omsvrsko]  DEFAULT ('') FOR [omsvrsko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__delvrsko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__delvrsko]  DEFAULT ('') FOR [delvrsko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__omsvrstg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__omsvrstg]  DEFAULT ('') FOR [omsvrstg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ord_facl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ord_facl]  DEFAULT ('') FOR [ord_facl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fiat_fin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fiat_fin]  DEFAULT ('') FOR [fiat_fin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit1]  DEFAULT ('') FOR [brfcrit1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit2]  DEFAULT ('') FOR [brfcrit2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit3]  DEFAULT ('') FOR [brfcrit3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit4]  DEFAULT ('') FOR [brfcrit4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit5]  DEFAULT ('') FOR [brfcrit5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit6]  DEFAULT ('') FOR [brfcrit6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit7]  DEFAULT ('') FOR [brfcrit7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit8]  DEFAULT ('') FOR [brfcrit8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrit9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrit9]  DEFAULT ('') FOR [brfcrit9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt10]  DEFAULT ('') FOR [brfcrt10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt11]  DEFAULT ('') FOR [brfcrt11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt12]  DEFAULT ('') FOR [brfcrt12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt13]  DEFAULT ('') FOR [brfcrt13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt14]  DEFAULT ('') FOR [brfcrt14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt15]  DEFAULT ('') FOR [brfcrt15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt16]  DEFAULT ('') FOR [brfcrt16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt17]  DEFAULT ('') FOR [brfcrt17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt18]  DEFAULT ('') FOR [brfcrt18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt19]  DEFAULT ('') FOR [brfcrt19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt20]  DEFAULT ('') FOR [brfcrt20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt21]  DEFAULT ('') FOR [brfcrt21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt22]  DEFAULT ('') FOR [brfcrt22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt23]  DEFAULT ('') FOR [brfcrt23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt24]  DEFAULT ('') FOR [brfcrt24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt25]  DEFAULT ('') FOR [brfcrt25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt26]  DEFAULT ('') FOR [brfcrt26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt27]  DEFAULT ('') FOR [brfcrt27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt28]  DEFAULT ('') FOR [brfcrt28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt29]  DEFAULT ('') FOR [brfcrt29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__brfcrt30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__brfcrt30]  DEFAULT ('') FOR [brfcrt30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_01]  DEFAULT ('') FOR [tekst_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_02]  DEFAULT ('') FOR [tekst_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_03]  DEFAULT ('') FOR [tekst_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_04]  DEFAULT ('') FOR [tekst_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_05]  DEFAULT ('') FOR [tekst_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_06]  DEFAULT ('') FOR [tekst_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_07]  DEFAULT ('') FOR [tekst_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_08]  DEFAULT ('') FOR [tekst_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_09]  DEFAULT ('') FOR [tekst_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_10]  DEFAULT ('') FOR [tekst_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_11]  DEFAULT ('') FOR [tekst_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_12]  DEFAULT ('') FOR [tekst_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_13]  DEFAULT ('') FOR [tekst_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_14]  DEFAULT ('') FOR [tekst_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_15]  DEFAULT ('') FOR [tekst_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_16]  DEFAULT ('') FOR [tekst_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_17]  DEFAULT ('') FOR [tekst_17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_18]  DEFAULT ('') FOR [tekst_18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_19]  DEFAULT ('') FOR [tekst_19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_20]  DEFAULT ('') FOR [tekst_20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_21]  DEFAULT ('') FOR [tekst_21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_22]  DEFAULT ('') FOR [tekst_22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_23]  DEFAULT ('') FOR [tekst_23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_24]  DEFAULT ('') FOR [tekst_24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_25]  DEFAULT ('') FOR [tekst_25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_26]  DEFAULT ('') FOR [tekst_26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_27]  DEFAULT ('') FOR [tekst_27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_28]  DEFAULT ('') FOR [tekst_28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_29]  DEFAULT ('') FOR [tekst_29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_30]  DEFAULT ('') FOR [tekst_30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_31]  DEFAULT ('') FOR [tekst_31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_32]  DEFAULT ('') FOR [tekst_32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_33]  DEFAULT ('') FOR [tekst_33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_34]  DEFAULT ('') FOR [tekst_34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_35]  DEFAULT ('') FOR [tekst_35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_36]  DEFAULT ('') FOR [tekst_36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_37]  DEFAULT ('') FOR [tekst_37]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_38]  DEFAULT ('') FOR [tekst_38]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_39]  DEFAULT ('') FOR [tekst_39]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_40]  DEFAULT ('') FOR [tekst_40]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_41]  DEFAULT ('') FOR [tekst_41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_42]  DEFAULT ('') FOR [tekst_42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_43]  DEFAULT ('') FOR [tekst_43]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_44]  DEFAULT ('') FOR [tekst_44]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tekst_45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tekst_45]  DEFAULT ('') FOR [tekst_45]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tvl_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tvl_oms1]  DEFAULT ('') FOR [tvl_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__tvl_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__tvl_oms2]  DEFAULT ('') FOR [tvl_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__word_bta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__word_bta]  DEFAULT ('') FOR [word_bta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__word_off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__word_off]  DEFAULT ('') FOR [word_off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__word_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__word_ord]  DEFAULT ('') FOR [word_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__word_wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__word_wdd]  DEFAULT ('') FOR [word_wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__isi_strt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__isi_strt]  DEFAULT ('') FOR [isi_strt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__isi__pdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__isi__pdf]  DEFAULT ('') FOR [isi__pdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__isi_find]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__isi_find]  DEFAULT ('') FOR [isi_find]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__pdf_ctrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__pdf_ctrl]  DEFAULT ('') FOR [pdf_ctrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__pdf__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__pdf__dir]  DEFAULT ('') FOR [pdf__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dam__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dam__url]  DEFAULT ('') FOR [dam__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dam_port]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dam_port]  DEFAULT ((0)) FOR [dam_port]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__damadres]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__damadres]  DEFAULT ('') FOR [damadres]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dam_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dam_user]  DEFAULT ('') FOR [dam_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__dam_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__dam_pass]  DEFAULT ('') FOR [dam_pass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvurl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvurl]  DEFAULT ('') FOR [edilvurl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvprt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvprt]  DEFAULT ((0)) FOR [edilvprt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvpr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvpr2]  DEFAULT ((0)) FOR [edilvpr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvcer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvcer]  DEFAULT ('') FOR [edilvcer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvkey]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvkey]  DEFAULT ('') FOR [edilvkey]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvpas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvpas]  DEFAULT ('') FOR [edilvpas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__edilvdir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__edilvdir]  DEFAULT ('') FOR [edilvdir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__v6dirsms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__v6dirsms]  DEFAULT ('') FOR [v6dirsms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__sms__lbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__sms__lbn]  DEFAULT ('') FOR [sms__lbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lbnreply]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lbnreply]  DEFAULT ('') FOR [lbnreply]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__sms_wyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__sms_wyze]  DEFAULT ('') FOR [sms_wyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__sms_cent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__sms_cent]  DEFAULT ('') FOR [sms_cent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__blokcalc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__blokcalc]  DEFAULT ('') FOR [blokcalc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prodmeth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prodmeth]  DEFAULT ('') FOR [prodmeth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_pln]  DEFAULT ('') FOR [prod_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_bon]  DEFAULT ('') FOR [prod_bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prdbnafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prdbnafg]  DEFAULT ('') FOR [prdbnafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prdb_mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prdb_mak]  DEFAULT ('') FOR [prdb_mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prdb_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prdb_typ]  DEFAULT ('') FOR [prdb_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_jdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_jdf]  DEFAULT ('') FOR [prod_jdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_rol]  DEFAULT ('') FOR [prod_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_ink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_ink]  DEFAULT ('') FOR [prod_ink]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prod_cmb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prod_cmb]  DEFAULT ('') FOR [prod_cmb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prodpant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prodpant]  DEFAULT ('') FOR [prodpant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prodprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prodprys]  DEFAULT ('') FOR [prodprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prodtoew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prodtoew]  DEFAULT ('') FOR [prodtoew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__prodplan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__prodplan]  DEFAULT ('') FOR [prodplan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__sysemail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__sysemail]  DEFAULT ('') FOR [sysemail]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__sysdbpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__sysdbpct]  DEFAULT ((0)) FOR [sysdbpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__oph__lyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__oph__lyn]  DEFAULT ((0)) FOR [oph__lyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__oph__afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__oph__afg]  DEFAULT ((0)) FOR [oph__afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__chvrzdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__chvrzdat]  DEFAULT ((0)) FOR [chvrzdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__gang_grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__gang_grp]  DEFAULT ((0)) FOR [gang_grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__gang_grp__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__gang_grp__ord]  DEFAULT ('') FOR [gang_grp__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afrlvdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afrlvdet]  DEFAULT ('') FOR [afrlvdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__afrfcdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__afrfcdet]  DEFAULT ('') FOR [afrfcdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__res__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__res__typ]  DEFAULT ((0)) FOR [res__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__resprtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__resprtyp]  DEFAULT ((0)) FOR [resprtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ofb_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ofb_filename]  DEFAULT ('') FOR [ofb_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__obv_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__obv_filename]  DEFAULT ('') FOR [obv_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__ont_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__ont_filename]  DEFAULT ('') FOR [ont_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__bst_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__bst_filename]  DEFAULT ('') FOR [bst_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__lvb_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__lvb_filename]  DEFAULT ('') FOR [lvb_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__rma_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__rma_filename]  DEFAULT ('') FOR [rma_filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autadm__fac_filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autadm__] ADD  CONSTRAINT [DF_autadm__fac_filename]  DEFAULT ('') FOR [fac_filename]
END

