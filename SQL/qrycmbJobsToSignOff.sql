SELECT dbo_order___.ord__ref, dbo_klabas__.naam____, dbo_afgart__.afg_oms1
FROM ((((dbo_order___ INNER JOIN dbo_klabas__ ON dbo_order___.kla__ref = dbo_klabas__.kla__ref) INNER JOIN dbo_stlST_RewindBrick ON dbo_order___.ord__ref = dbo_stlST_RewindBrick.ord__ref) LEFT JOIN dbo_stlST_RewindJobSignOff ON dbo_order___.ord__ref = dbo_stlST_RewindJobSignOff.ord__ref) INNER JOIN dbo_v4vrs___ ON dbo_order___.ord__ref = dbo_v4vrs___.off__ref) INNER JOIN dbo_afgart__ ON dbo_v4vrs___.afg__ref = dbo_afgart__.afg__ref
GROUP BY dbo_order___.ord__ref, dbo_klabas__.naam____, dbo_afgart__.afg_oms1, dbo_stlST_RewindJobSignOff.signedOff
HAVING (((dbo_stlST_RewindJobSignOff.signedOff) Is Null)) OR (((dbo_stlST_RewindJobSignOff.signedOff)=False))
ORDER BY dbo_order___.ord__ref;

