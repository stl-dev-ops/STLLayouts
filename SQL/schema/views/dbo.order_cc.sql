SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[order_cc]'))
EXEC dbo.sp_executesql @statement = N'create view order_cc (afg__ref, bst__bon, kla__ref, lok__ref, trn__srt,ordered) as  SELECT      afg__ref,  bst__bon,  kla__ref, lok__ref, trn__srt, SUM(b_aantal) ordered FROM         bstlyn__ GROUP BY afg__ref, bst__bon, kla__ref, lok__ref, trn__srt
' 
