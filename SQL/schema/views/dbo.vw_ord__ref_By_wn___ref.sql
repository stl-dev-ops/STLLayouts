SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ord__ref_By_wn___ref]'))
EXEC dbo.sp_executesql @statement = N'/* Shows all wn___ref''s in an order*/
CREATE VIEW dbo.vw_ord__ref_By_wn___ref
AS
SELECT     TOP (100) PERCENT ord__ref, wn___ref
FROM         (SELECT     dbo.w_atl1__.wn___ref, dbo.w_atl1__.ord__ref
                       FROM          dbo.w_atl1__ LEFT OUTER JOIN
                                              dbo.stlRowellXCERM ON dbo.w_atl1__.wn___ref = dbo.stlRowellXCERM.wn___ref
                       WHERE      (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.wp___ref = ''0000'')) OR
                                              (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.akt__ref = ''00''))
                       GROUP BY dbo.w_atl1__.wn___ref, dbo.w_atl1__.ord__ref
                       UNION ALL
                       SELECT     wn___ref, ord__ref
                       FROM         dbo.w_atl2__
                       WHERE     (soort___ = ''2'' OR
                                             soort___ = ''b'') AND (NOT (wp___ref = ''0000'')) OR
                                             (soort___ = ''2'' OR
                                             soort___ = ''b'') AND (NOT (akt__ref = ''00''))
                       GROUP BY wn___ref, ord__ref
                       UNION ALL
                       SELECT     wn___ref, ord__ref
                       FROM         dbo.w_pnt2__
                       WHERE     (NOT (wp___ref = ''0000'')) OR
                                             (NOT (akt__ref = ''00''))
                       GROUP BY wn___ref, ord__ref
                       UNION ALL
                       SELECT     wn___ref, ord__ref
                       FROM         dbo.hispnt__
                       WHERE     (NOT (wp___ref = ''0000'')) OR
                                             (NOT (akt__ref = ''00''))
                       GROUP BY wn___ref, ord__ref) AS vw_ord__ref_By_wn___ref
WHERE     (ord__ref <> '''')
GROUP BY wn___ref, ord__ref
ORDER BY ord__ref, wn___ref
' 
