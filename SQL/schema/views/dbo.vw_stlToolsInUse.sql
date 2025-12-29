SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlToolsInUse]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlToolsInUse]
AS

SELECT h.arth_ref, s.stns_rpn, h.arthdref, h.toestand, h.dat__beg, h.uur__beg, h.dat__end, h.uur__end, h.wp___ref, p.wp_naam_, h.wn___ref, e.wn___rpn, h.ord__ref, o.omschr__, o.kla__rpn, h.aantal__

FROM hlpreg__ h JOIN
stnspr__ s ON h.arth_ref = s.stns_ref JOIN
werknm__ e ON h.wn___ref = e.wn___ref JOIN
werkpo__ p ON h.wp___ref = p.wp___ref JOIN
order___ o ON h.ord__ref = o.ord__ref 

WHERE   (toestand = ''1'') /* Status = Tool in Use */

' 
