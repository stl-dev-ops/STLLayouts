SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPlandv__Snapshot]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPlandv__Snapshot] AS' 
END
-- =============================================
-- Author:		<Author,,Jon>
-- Create date: <7/8/22,,>
-- Description:	<This stored procedure makes a copy of plandv__ (schedule) records to help in reporting in plan vs. performance,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlPlandv__Snapshot]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @BatchID as int;

	-- get the new batch id (batchType = 1 means it comes from this script, default is 0 meaning from the stlOS application
	insert into stlOS_Batch (create_dt, batchType) VALUES(GETDATE(), 1);
	SET @BatchID = SCOPE_IDENTITY();

	INSERT into dbo.stlOS_plandv__ (
		stlOS_BatchID
		, stlOS_Source
		, pldv_ref
		, ord__ref
		, suborder
		, kpn__ref
		, dg___ref
		, aktie___
		, priorite
		, druk____
		, toestand
		, plan__iu
		, wp___ref
		, akt__ref
		, plpl_ref
		, plpl_cal
		, aantal__
		, duur____
		, duurstel
		, duurprod
		, wissels_
		, pln_tm__
		, pln_dt__
		, pln_dd__
		, komment_
		, komment1
		, komment2
		, komment3
		, komment4
		, datum___
		, start___
		, datumend
		, stop____
		, weeknum_
		, planvast
		, dat__min
		, sta__min
		, dat__max
		, sta__max
		, valide__
		, pmd__ref
		, wn___ref
		, kla__ref
		, kla__rpn
		, orgdatum
		, orgstart
		, af__date
		, af__uur_
		, af__user
		, af__wyze
		, af__duur
		, jobnr_vw
		, rowid
	)
select 
		stlOS_BatchID
		, 1 as stlOS_Source
		, pldv_ref
		, ord__ref
		, suborder
		, kpn__ref
		, dg___ref
		, aktie___
		, priorite
		, druk____
		, toestand
		, plan__iu
		, wp___ref
		, akt__ref
		, plpl_ref
		, plpl_cal
		, aantal__
		, duur____
		, duurstel
		, duurprod
		, wissels_
		, pln_tm__
		, pln_dt__
		, pln_dd__
		, komment_
		, komment1
		, komment2
		, komment3
		, komment4
		, datum___
		, start___
		, datumend
		, stop____
		, weeknum_
		, planvast
		, dat__min
		, sta__min
		, dat__max
		, sta__max
		, valide__
		, pmd__ref
		, wn___ref
		, kla__ref
		, kla__rpn
		, orgdatum
		, orgstart
		, af__date
		, af__uur_
		, af__user
		, af__wyze
		, af__duur
		, jobnr_vw
		, rowid
		 from plandv__, stlOS_Batch
		where stlOS_BatchID = @BatchID
END

