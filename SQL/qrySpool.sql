SELECT spool.*, dbo_afgsku__.inhoud01, dbo_afgsku__.aant__ex, dbo_paswrd__.username, dbo_afgsku__.crea_dat, dbo_afgsku__.crea_uur
FROM (spool LEFT JOIN dbo_afgsku__ ON spool.sku__ref = dbo_afgsku__.sku__ref) LEFT JOIN dbo_paswrd__ ON dbo_afgsku__.crea_usr = dbo_paswrd__.usernbr_
ORDER BY spool.spoolNo;

