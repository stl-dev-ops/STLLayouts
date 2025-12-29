SELECT dbo_werknm__.wn___ref, [wn_vnaam] & ' ' & [wn_naam_] AS rName
FROM dbo_werknm__
WHERE (((dbo_werknm__.afd__ref)='7') AND ((dbo_werknm__.indienst)='Y'));

