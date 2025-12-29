SELECT        ord__ref, CAST(STUFF		
((SELECT        N', ' + art__rpn		
FROM            (SELECT vC.ord__ref, vC.art__rpn		
FROM		
(		
   SELECT stobew__.ord__ref, m.art__rpn + ' (' + s.lev__rpn + ')' art__rpn		
   FROM stobew__ LEFT JOIN		
   artiky__ m ON stobew__.art__ref = m.art__ref JOIN		
   levbas__ s ON m.lev__ref = s.lev__ref 		
   WHERE soort___ IN ('1', '3', '5', '6', 'C')		
   AND stobew__.ord__ref IN 		
   (		
   SELECT DISTINCT c.ord__ref 		
	FROM stobew__ c	
	WHERE c.art__ref IN	
	(	
		SELECT m.art__ref 
		FROM artiky__ m JOIN
		levbas__ s ON m.lev__ref = s.lev__ref
		where s.lev__rpn like 'hani%' or s.lev__rpn like 'POLYM%'
	)	
	AND c.ord__ref NOT IN ('', 'N')	
   )		
) vC		
GROUP BY vC.ord__ref, vC.art__rpn) Boxes		
WHERE        pSKU.ord__ref = Boxes.ord__ref		
ORDER BY art__rpn FOR XML PATH('')), 1, 2, '') AS NVARCHAR(255)) Contents		
FROM 		
(		
SELECT vC.ord__ref, vC.art__rpn		
FROM		
(		
   SELECT stobew__.ord__ref, m.art__rpn + ' (' + s.lev__rpn + ')' art__rpn		
   FROM stobew__ LEFT JOIN		
   artiky__ m ON stobew__.art__ref = m.art__ref JOIN		
   levbas__ s ON m.lev__ref = s.lev__ref 		
   WHERE soort___ IN ('1', '3', '5', '6', 'C')		
   AND stobew__.ord__ref IN 		
   (		
   SELECT DISTINCT c.ord__ref 		
	FROM stobew__ c	
	WHERE c.art__ref IN	
	(	
		SELECT m.art__ref 
		FROM artiky__ m JOIN
		levbas__ s ON m.lev__ref = s.lev__ref
		where s.lev__rpn like 'hani%' or s.lev__rpn like 'POLYM%'
	)	
	AND c.ord__ref NOT IN ('', 'N')	
   )		
) vC		
GROUP BY vC.ord__ref, vC.art__rpn		
)		
pSKU		
WHERE ord__ref <> ''		
GROUP BY ord__ref		
