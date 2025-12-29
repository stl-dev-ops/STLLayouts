SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlOverageReport]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlOverageReport]
AS
SELECT so.ord__ref, so.lyn__ref, c.kla__ref, c.kla__rpn, levtol__.omschr__, so.bst__dat, so.b_aantal, so.beaantal, so.p_aantal, so.l_aantal, so.f_aantal, so.vrz__dat, 
CASE 
 WHEN c.ltol_ref = ''15'' THEN 
   CASE 
     WHEN so.b_aantal < 5000000 THEN 15.0 / 100.0 * so.b_aantal 
   ELSE 
     25.0 / 100.0 * so.b_aantal 
   END
ELSE 
   CAST(c.ltol_ref AS float) / 100.0 * so.b_aantal 
END AS PreApprovedOverage, 
so.ltol_max AS CERM_PreApprovedOverage, so.lant_max AS PreApprovedOverageOverride, 
CASE 
  WHEN l_aantal >= b_aantal THEN l_aantal - b_aantal 
ELSE 
  0 
END AS ActualOverage, 
CASE WHEN l_aantal >= b_aantal THEN 
  CASE 
    WHEN b_aantal > 0 THEN ROUND((l_aantal - b_aantal) / b_aantal * 100.0, 2) 
  ELSE 
    0 
  END 
ELSE 
  0 
END AS ActualPercentOver, 
CASE 
  WHEN CASE 
         WHEN l_aantal >= b_aantal THEN l_aantal - b_aantal 
       ELSE 
         0 
       END 
	 > 
	   CASE 
         WHEN c.ltol_ref = ''15'' THEN 
            CASE 
	          WHEN so.b_aantal < 5000000 THEN 15.0 / 100.0 * so.b_aantal 
	        ELSE 
	          25.0 / 100.0 * so.b_aantal 
	        END 
   ELSE 
     CAST(c.ltol_ref AS float) / 100.0 * so.b_aantal 
   END THEN ''Yes'' 
ELSE 
  ''No'' 
END AS DidWeExceedPreApprovedOverage, 
c.naam____, so.bst__ref, stlOverageStatus.OverageStatus, so.pr_excl_, 
CASE 
  WHEN prys_srt = ''0'' THEN ''Text'' 
  WHEN prys_srt = ''1'' THEN ''Discount/supplement'' 
  WHEN prys_srt = ''2'' THEN ''Fixed amount'' 
  WHEN prys_srt = ''3'' THEN ''/lb'' 
  WHEN prys_srt = ''4'' THEN ''/page'' 
  WHEN prys_srt = ''5'' THEN ''/piece''
  WHEN prys_srt = ''6'' THEN ''/100'' 
  WHEN prys_srt = ''7'' THEN ''/1000'' 
  WHEN prys_srt = ''8'' THEN ''/100000'' 
  WHEN prys_srt = ''9'' THEN ''/sh tn'' 
  WHEN prys_srt = ''B'' THEN ''/ft'' 
  WHEN prys_srt = ''C'' THEN ''/msi'' 
END AS PriceType,
(
	SELECT CASE WHEN CERM_ProducedLabels.[Count] = 0 THEN stlRewindBrick.[Count] ELSE CERM_ProducedLabels.[Count] END 
	FROM
	(
	  SELECT off__ref, SUM(aant_prd) AS Count
	  FROM v4vrs___
	  GROUP BY off__ref
	 ) AS CERM_ProducedLabels LEFT JOIN
	(
	  SELECT ord__ref, SUM(goodLabels) AS Count
	  FROM stlST_RewindBrick
	  GROUP BY ord__ref
	) AS stlRewindBrick ON CERM_ProducedLabels.off__ref = stlRewindBrick.ord__ref
	WHERE off__ref = so.ord__ref
) AS produced_lbls, so.bst__dat AS OrderFrom, so.bst__dat AS OrderTo, so.vrz__dat AS ShippedFrom, so.vrz__dat AS ShippedTo

FROM levtol__ RIGHT JOIN
klabas__ c INNER JOIN
bstlyn__ so ON c.kla__ref = so.kla__ref LEFT JOIN
stlOverageStatus INNER JOIN
stlJobOverageStatus ON stlOverageStatus.ID = stlJobOverageStatus.OverageStatusID ON so.ord__ref = stlJobOverageStatus.ord__ref ON levtol__.ltol_ref = c.ltol_ref

WHERE (so.vrz__dat <> ''1980-1-1'') AND (so.ord__ref <> '''')

' 
