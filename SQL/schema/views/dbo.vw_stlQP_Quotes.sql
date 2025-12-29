SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlQP_Quotes]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlQP_Quotes]
AS
SELECT q.ID, q.kla__ref, ISNULL(c.kla__rpn, '''') kla__rpn, ISNULL(c.naam____, '''') naam____, q.knp__ref, q.ReferenceAtCustomer, q.vrt__ref, q.QuoteDescription, l.LengthAround, l.WidthAcross, CAST(l.WidthAcross AS nvarchar) + '' x '' + CAST(l.LengthAround AS nvarchar) AS LabelSize, 
p.ProductGroup, q.prfm_ref, q.Deleted, 
q.Created, q.CreatedBy, q.Updated, q.UpdatedBy, SUBSTRING(q.CreatedBy, CHARINDEX(''\'', q.CreatedBy) + 1, LEN(q.CreatedBy)) AS CreatedByUser, 
SUBSTRING(q.UpdatedBy, CHARINDEX(''\'', q.UpdatedBy) + 1, LEN(q.UpdatedBy)) AS UpdatedByUser, 
cc.email___, q.ParameterID, ISNULL(cc.knp__vnm + '' '', '''')  + ISNULL(cc.knp__nam, '''') AS ContactName, l.drg__ref, l.drg__rpn, l.LabelsPerRoll, l.vpak_ref, ISNULL(cc.knp__vnm, '''') AS ContactFirstName, 
l.Ink, s.StatusID, s.Status, s.StatusDate, s.Notes, l.CardTypeID, l.ClearBorder, l.FullBleed, q.QuoteLetterUnits, q.InvoiceStyleID, q.PricingApproved, q.NotReplacingProduct, cl.ConfidenceLevel    

FROM vw_stlQP_QuotesCurrentStatus AS s RIGHT JOIN
stlQP_Quotes AS q LEFT JOIN
klabas__ AS c ON q.kla__ref = c.kla__ref AND q.kla__ref <> '''' LEFT JOIN
stlQP_Label AS l ON q.ID = l.QuoteID AND l.Deleted = 0 ON s.QuoteID = q.ID LEFT JOIN
konpkl__ AS cc ON q.kla__ref = cc.kla__ref AND q.knp__ref = cc.knp__ref LEFT JOIN
stlQP_Parameters AS p ON q.ParameterID = p.ID LEFT JOIN 
stlQP_QuoteSalesConfidence sc ON q.ID = sc.QuoteID AND sc.Deleted = 0 LEFT JOIN
stlQP_QuoteConfidenceLevel cl ON sc.ConfidenceLevelID = cl.ID 
WHERE q.Deleted = 0
' 
