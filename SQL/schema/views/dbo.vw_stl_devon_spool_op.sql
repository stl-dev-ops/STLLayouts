SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spool_op]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_spool_op
AS
SELECT     dbo.afgsku__.crea_dat, dbo.afgsku__.crea_usr, dbo.afgsku__.ord__ref, COUNT(dbo.afgsku__.volgnr__) AS SKU, dbo.paswrd__.username
FROM         dbo.afgsku__ INNER JOIN
                      dbo.paswrd__ ON dbo.afgsku__.crea_usr = dbo.paswrd__.usernbr_
WHERE     (dbo.afgsku__.ord__ref > ''0'')
GROUP BY dbo.afgsku__.ord__ref, dbo.afgsku__.crea_dat, dbo.afgsku__.crea_usr, dbo.afgsku__.vpk__ref, dbo.paswrd__.username, dbo.paswrd__.usernbr_
' 
