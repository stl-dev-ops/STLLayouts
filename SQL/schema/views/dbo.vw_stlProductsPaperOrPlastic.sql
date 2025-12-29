SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductsPaperOrPlastic]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProductsPaperOrPlastic]
AS
SELECT        p.afg__ref, [off].bon__ref, p.off1_ref, eti.drg__ref AS [Bottom Subsrate], Sub1.typfrrpn AS S1_face, Sub1.typrgrpn AS S1_line, etaf.drg__ref AS [Suppl. Substrate], Sub2.typfrrpn AS S2_face, Sub2.typrgrpn AS S2_line, 
                         CASE WHEN etaf.drg__ref IS NULL 
                         THEN CASE WHEN Sub1.typfrrpn = ''F'' THEN ''Plastic'' WHEN Sub1.typfrrpn = ''P'' THEN ''Paper'' ELSE Sub1.typfrrpn END ELSE CASE WHEN Sub1.typfrrpn = ''-'' THEN CASE WHEN Sub1.typrgrpn = ''F'' THEN ''Plastic'' WHEN Sub1.typrgrpn
                          = ''P'' THEN ''Paper'' ELSE Sub1.typrgrpn END ELSE CASE WHEN Sub1.typrgrpn = ''-'' THEN CASE WHEN Sub1.typfrrpn = ''F'' THEN ''Plastic'' WHEN Sub1.typfrrpn = ''P'' THEN ''Paper'' ELSE Sub1.typfrrpn END ELSE ''('' + Sub1.typfrrpn +
                          '','' + Sub1.typrgrpn + '')'' END END END + ''/'' + CASE WHEN etaf.drg__ref IS NULL 
                         THEN CASE WHEN Sub1.typrgrpn = ''F'' THEN ''Plastic'' WHEN Sub1.typrgrpn = ''P'' THEN ''Paper'' ELSE Sub1.typrgrpn END ELSE CASE WHEN Sub2.typfrrpn = ''-'' THEN CASE WHEN Sub2.typrgrpn = ''F'' THEN ''Plastic'' WHEN Sub2.typrgrpn
                          = ''P'' THEN ''Paper'' ELSE Sub2.typrgrpn END ELSE CASE WHEN Sub2.typrgrpn = ''-'' THEN CASE WHEN Sub2.typfrrpn = ''F'' THEN ''Plastic'' WHEN Sub2.typfrrpn = ''P'' THEN ''Paper'' ELSE Sub2.typfrrpn END ELSE ''('' + Sub2.typfrrpn +
                          '','' + Sub2.typrgrpn + '')'' END END END AS PaperOrPlastic
FROM afgart__ AS p LEFT OUTER JOIN
v1eti___ AS eti ON p.off1_ref = eti.off__ref LEFT OUTER JOIN
v1etaf__ AS etaf ON p.off1_ref = etaf.off__ref AND etaf.drg__ref <> '''' LEFT OUTER JOIN
v1off___ AS [off] ON eti.off__ref = [off].off__ref LEFT OUTER JOIN
drgers__ AS Sub1 ON Sub1.drg__ref = eti.drg__ref LEFT OUTER JOIN
drgers__ AS Sub2 ON Sub2.drg__ref = etaf.drg__ref
' 
