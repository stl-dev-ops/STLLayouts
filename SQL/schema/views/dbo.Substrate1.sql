SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Substrate1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.Substrate1
AS
SELECT     v4eti___.off__ref, v4eti___.drg__ref, drgers__.lev__ref, drgers__.lev__rpn, drgers__.taal___7 name, ''Front'' type, v4eti___.tedrkdto, 
conso=(select sum(aantal__) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4eti___.drg__ref) and stobew__.ord__ref=v4eti___.off__ref),
cprys=(select max(prijs___) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4eti___.drg__ref) and stobew__.ord__ref=v4eti___.off__ref),
jobqty=(select oplage__ from order___ where order___.ord__ref=v4eti___.off__ref),
actqty=(select sum(aant_prd) from v4vrs___ where v4vrs___.off__ref=v4eti___.off__ref),
v4eti___.prys_peh, v4eti___.breedte_,
deldate=(select max(lev__dat) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delyear=(select max(DATEPART(YYYY,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delmonth=(select max(DATEPART(MM,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delday=(select max(DATEPART(DD,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref)
FROM         v4eti___ INNER JOIN
                      drgers__ ON v4eti___.drg__ref = drgers__.drg__ref 

                      
UNION ALL


SELECT     v4eti___.off__ref, v4eti___.drg__ref, drgers__.lev__ref, drgers__.lev__rpn, drgers__.taal___9 name, ''Liner'' type, v4eti___.tedrkdto,
conso=(select sum(aantal__) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4eti___.drg__ref) and stobew__.ord__ref=v4eti___.off__ref),
cprys=(select max(prijs___) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4eti___.drg__ref) and stobew__.ord__ref=v4eti___.off__ref),
jobqty=(select oplage__ from order___ where order___.ord__ref=v4eti___.off__ref),
actqty=(select sum(aant_prd) from v4vrs___ where v4vrs___.off__ref=v4eti___.off__ref),
v4eti___.prys_peh, v4eti___.breedte_,
deldate=(select max(lev__dat) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delyear=(select max(DATEPART(YYYY,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delmonth=(select max(DATEPART(MM,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref),
delday=(select max(DATEPART(DD,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4eti___.off__ref)
FROM         v4eti___ INNER JOIN
                      drgers__ ON v4eti___.drg__ref = drgers__.drg__ref and drgers__.lev__rpn like ''%ELEV-001%''
                      
                      
UNION ALL



select v4etaf__.off__ref, v4etaf__.drg__ref, drgers__.lev__ref, drgers__.lev__rpn, '''' name, ''offline1'' type, v4etaf__.vrbpap__,
conso=(select sum(aantal__) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4etaf__.drg__ref) and stobew__.ord__ref=v4etaf__.off__ref),
cprys=(select max(prijs___) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4etaf__.drg__ref) and stobew__.ord__ref=v4etaf__.off__ref),
jobqty=(select oplage__ from order___ where order___.ord__ref=v4etaf__.off__ref),
actqty=(select sum(aant_prd) from v4vrs___ where v4vrs___.off__ref=v4etaf__.off__ref),
v4etaf__.prys_peh, v4etaf__.breedte_,
deldate=(select max(lev__dat) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delyear=(select max(DATEPART(YYYY,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delmonth=(select max(DATEPART(MM,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delday=(select max(DATEPART(DD,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref)
from v4etaf__ INNER JOIN 
               drgers__ on v4etaf__.drg__ref = drgers__.drg__ref 
where v4etaf__.drg__ref <> '''' and v4etaf__.drg__ref <> ''801018'' and v4etaf__.etaf_ref=''000001''
 


UNION ALL



select v4etaf__.off__ref, v4etaf__.drg__ref, drgers__.lev__ref, drgers__.lev__rpn, '''' name, ''offline2'' type, v4etaf__.vrbpap__,
conso=(select sum(aantal__) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4etaf__.drg__ref) and stobew__.ord__ref=v4etaf__.off__ref),
cprys=(select max(prijs___) from stobew__ where stobew__.art__ref in (select art__ref from artiky__ where artiky__.drg__ref=v4etaf__.drg__ref) and stobew__.ord__ref=v4etaf__.off__ref),
jobqty=(select oplage__ from order___ where order___.ord__ref=v4etaf__.off__ref),
actqty=(select sum(aant_prd) from v4vrs___ where v4vrs___.off__ref=v4etaf__.off__ref),
v4etaf__.prys_peh, v4etaf__.breedte_,
deldate=(select max(lev__dat) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delyear=(select max(DATEPART(YYYY,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delmonth=(select max(DATEPART(MM,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref),
delday=(select max(DATEPART(DD,lev__dat)) from bstlyn__ where bstlyn__.ord__ref=v4etaf__.off__ref)
from v4etaf__ INNER JOIN 
               drgers__ on v4etaf__.drg__ref = drgers__.drg__ref 
where v4etaf__.drg__ref <> '''' and v4etaf__.drg__ref <> ''801018'' and v4etaf__.etaf_ref=''000002''
' 
