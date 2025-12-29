SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLDiePresses]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_STLDiePresses]
AS
SELECT d.stns_ref, p.prs__oms, 
[A10]             = CASE WHEN prs__oms = ''A10''                 THEN 1 ELSE 0 END, 
[Aztec]           = CASE WHEN CHARINDEX(''aztec'', prs__oms) = 0 THEN 0 ELSE 1 END, 
[Aztec Nonstop]   = CASE WHEN prs__oms = ''Aztec Nonstop''       THEN 1 ELSE 0 END, 
[B2]              = CASE WHEN prs__oms = ''B2''                  THEN 1 ELSE 0 END, 
[Coating]         = CASE WHEN prs__oms = ''Coating''             THEN 1 ELSE 0 END, 
[Cohesio]         = CASE WHEN prs__oms = ''Cohesio''             THEN 1 ELSE 0 END, 
[Cohesio Nonstop] = CASE WHEN prs__oms = ''Cohesio Nonstop''     THEN 1 ELSE 0 END, 
[Dash C Press]    = CASE WHEN prs__oms = ''Dash C Press''        THEN 1 ELSE 0 END, 
[Digital]         = CASE WHEN prs__oms = ''Digital''             THEN 1 ELSE 0 END, 
[F16]             = CASE WHEN prs__oms = ''F16''                 THEN 1 ELSE 0 END, 
[Rewind]          = CASE WHEN prs__oms = ''Rewind''              THEN 1 ELSE 0 END, 
[Silicone Job]    = CASE WHEN prs__oms = ''Silicone Job''        THEN 1 ELSE 0 END, 
[Spooling]        = CASE WHEN prs__oms = ''Spooling''            THEN 1 ELSE 0 END,  
[Dragon Nonstop]  = CASE WHEN prs__oms = ''Dragon Nonstop''      THEN 1 ELSE 0 END,  
[J20]             = CASE WHEN prs__oms = ''J20''                 THEN 1 ELSE 0 END
FROM stnsps__ AS d INNER JOIN
epersn__ AS p ON d.prs__ref = p.prs__ref

WHERE p.blokkeer = ''N''
' 
