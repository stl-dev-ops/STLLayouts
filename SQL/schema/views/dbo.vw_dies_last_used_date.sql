SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_dies_last_used_date]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_dies_last_used_date
AS
SELECT     o.leverdat AS DeliveryDate, o.ord__ref AS JobID, s.stns_ref AS DieID, s.stns_rpn AS DieKeyword, s.stns_oms AS DieDescription
FROM         dbo.order___ AS o LEFT OUTER JOIN
                      dbo.vw_v1eti___v1etaf__union AS v ON o.off__ref = v.off__ref LEFT OUTER JOIN
                      dbo.stnspr__ AS s ON v.stns_ref = s.stns_ref AND o.ord__ref IN
                          (SELECT     TOP (1) o1.ord__ref
                            FROM          dbo.vw_v1eti___v1etaf__union AS v1 INNER JOIN
                                                   dbo.order___ AS o1 ON v1.off__ref = o1.off__ref
                            WHERE      (v1.stns_ref = s.stns_ref)
                            ORDER BY o1.leverdat DESC)
WHERE     (s.stns_ref IS NOT NULL)
' 
