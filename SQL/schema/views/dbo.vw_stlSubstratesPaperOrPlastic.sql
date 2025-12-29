SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSubstratesPaperOrPlastic]'))
EXEC dbo.sp_executesql @statement = N'






CREATE VIEW [dbo].[vw_stlSubstratesPaperOrPlastic]
AS
/*
	SUBSTRATES 
		LEVEL 1 - drgtyp__
		LEVEL 2 - drgsrt__

*/
SELECT s.drg__ref, s.drg__rpn, s.drg__oms, s.geblokk_, 
s.typfrref, F1.typ__rpn AS F1_typ__rpn, 
s.srtfrref, F2.typ__rpn AS F2_typ__rpn, F2.srt__oms AS F2_srt__oms,

s.typlmref, A1.typ__rpn AS A1_typ__rpn,
s.srtlmref, A2.typ__rpn AS A2_typ__rpn, A2.srt__oms AS A2_srt__oms,

s.typrgref, B1.typ__rpn AS B1_typ__rpn, 
s.srtrgref, B2.typ__rpn AS B2_typ__rpn, B2.srt__oms AS B2_srt__oms, 
F1.typ__oms AS FaceSheet, 
A1.typ__oms AS Adhesive, 
B1.typ__oms AS Liner, 
F1.typ__oms + ''/'' + B1.typ__oms AS [Paper or Plastic], s.crea_dat, s.prys__m2  

FROM 

drgers__ AS s LEFT JOIN

drgtyp__ AS F1 ON s.typfrref = F1.typ__ref LEFT JOIN
drgsrt__ AS F2 ON s.srtfrref = F2.srt__ref LEFT JOIN

drgtyp__ AS A1 ON s.typlmref = A1.typ__ref LEFT JOIN
drgsrt__ AS A2 ON s.srtlmref = A2.srt__ref LEFT JOIN

drgtyp__ AS B1 ON s.typrgref = B1.typ__ref LEFT JOIN
drgsrt__ AS B2 ON s.srtrgref = B2.srt__ref

' 
