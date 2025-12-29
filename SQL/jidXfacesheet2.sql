SELECT
    *

FROM stobew__ mov

JOIN artiky__  mat
    ON mov.art__ref = mat.art__ref

WHERE mat.art__rpn LIKE '%INK%'
    AND mov.datum___ >= '2024-01-01'
    AND mov.soort___ = '2'

ORDER BY mov.datum___ DESC