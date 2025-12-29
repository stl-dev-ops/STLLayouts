SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spooling_op]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_spooling_op
AS
SELECT     dbo.afgsku__.crea_dat, dbo.afgsku__.crea_dat AS Date1, dbo.afgsku__.crea_usr, dbo.afgsku__.ord__ref, COUNT(dbo.afgsku__.volgnr__) AS SKU, 
                      dbo.paswrd__.username
FROM         dbo.afgsku__ INNER JOIN
                      dbo.paswrd__ ON dbo.afgsku__.crea_usr = dbo.paswrd__.usernbr_
GROUP BY dbo.afgsku__.crea_dat, dbo.afgsku__.crea_usr, dbo.afgsku__.ord__ref, dbo.paswrd__.usernbr_, dbo.paswrd__.username, dbo.paswrd__.log_name
' 
