SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Reservations_MinScheduledDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_Reservations_MinScheduledDate
AS
SELECT        ord__ref, MIN(MinStart) AS MinimumScheduledDate
FROM            (SELECT        ord__ref, MIN(datum___) AS MinStart
                          FROM            dbo.plandv__
                          GROUP BY ord__ref
                          UNION
                          SELECT        ord__ref, MIN(datumend) AS MinEnd
                          FROM            dbo.plandv__ AS plandv___1
                          GROUP BY ord__ref) AS m
GROUP BY ord__ref
' 
