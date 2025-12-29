SELECT *
FROM stobew__
WHERE soort___ = '3'
    AND grbonref IN
    (
        SELECT grbonref
        FROM stobew__
        WHERE art__ref IN
        (
            SELECT m.art__ref 
            FROM artiky__ m JOIN
            levbas__ s ON m.lev__ref = s.lev__ref
            where s.lev__rpn like 'hani%' or s.lev__rpn like 'POLYM%'
        )
        AND soort___ = '2'
    );

SELECT *
FROM stobew__
WHERE soort___ = '2'
    AND ord__ref IN
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