SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScratchCodeSelector]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_stlScratchCodeSelector AS SELECT * FROM (
					 SELECT C.klcodref AS ScratchCode, A.Attribute, CASE WHEN SC.Answer = 1 THEN ''Yes'' ELSE ''No'' END AS [Answer]
					 FROM stlSCS_ScratchCodeAttribute AS SC RIGHT OUTER JOIN
                     klrcod__ AS C ON SC.klcodref = C.klcodref LEFT OUTER JOIN
                     stlSCS_Attribute AS A ON SC.stlSCS_AttributeID = A.ID
					 WHERE (C.klcodref IN
                             (SELECT klcod_fr
                              FROM eprskl__
                              WHERE (prs__ref = ''5001'')))) AS t
					PIVOT (MAX(Answer) 
                    FOR [Attribute] IN( [Clear Border],[Color Change Chameleon],[Full Bleed],[Gloss Card],[Hidden Message],[Matte Card],[Paper Gift Card (Heavy)],[Paper Phone Card (Light)],[Peel Off with Tab],[Spooled] ) ) AS p' 
