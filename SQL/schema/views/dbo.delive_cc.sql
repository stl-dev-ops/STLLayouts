SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[delive_cc]'))
EXEC dbo.sp_executesql @statement = N'create view delive_cc (afg__ref, bst__bon, kla__ref, lok__ref, trn__srt, delivered) as SELECT     afg__ref, bst__bon, kla__ref, lok__ref, trn__srt, SUM(l_aantal) delivered FROM         bstlyn__ WHERE     (vrz__tst = ''Y'') GROUP BY afg__ref, bst__bon, kla__ref, lok__ref, trn__srt
' 
