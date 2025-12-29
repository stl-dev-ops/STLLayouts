SELECT dbo_paswrd__.usernbr_, dbo_paswrd__.username, dbo_paswrd__.indienst
FROM dbo_paswrd__
WHERE (((dbo_paswrd__.indienst)="1"))
ORDER BY dbo_paswrd__.username;

