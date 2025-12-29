SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SubstratesLatestPrices]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_SubstratesLatestPrices]
AS

SELECT  
	S.drg__ref, S.drg__rpn AS SubstrateKey, S.drg__oms [Description], S.prvm__m2 SubstrateLatestPrice, 
	S2.drg__ref drg__ref1, S.taal___7 SubstrateKey1, S2.drg__oms Description1, S2.prvm__m2 SubstrateLatestPrice1, 
	S3.drg__ref drg__ref2, S.taal___8 SubstrateKey2, S3.drg__oms Description2, S3.prvm__m2 SubstrateLatestPrice2, 
	S4.drg__ref drg__ref3, S.taal___9 SubstrateKey3, S4.drg__oms Description3, S4.prvm__m2 SubstrateLatestPrice3, S.geblokk_
FROM drgers__ S LEFT JOIN
stlSubstrates S_KEY ON S_KEY.SubstrateID = S.drg__ref LEFT JOIN
drgers__ S2 ON S_KEY.FaceSheetID = S2.drg__ref LEFT JOIN
drgers__ S3 ON S_KEY.AdhesiveID = S3.drg__ref LEFT JOIN
drgers__ S4 ON S_KEY.LinerID = S4.drg__ref

--SELECT  
--	S.drg__ref, S.drg__rpn AS SubstrateKey, S.drg__oms [Description], S.prvm__m2 SubstrateLatestPrice, 
--	S2.drg__ref drg__ref1, S.taal___7 SubstrateKey1, S2.[Description] Description1, S2.LatestPrice SubstrateLatestPrice1, 
--	S3.drg__ref drg__ref2, S.taal___8 SubstrateKey2, S3.[Description] Description2, S3.LatestPrice SubstrateLatestPrice2, 
--	S4.drg__ref drg__ref3, S.taal___9 SubstrateKey3, S4.[Description] Description3, S4.LatestPrice SubstrateLatestPrice3, S.geblokk_
--FROM
--(
--	SELECT drg__ref, drg__rpn AS SubstrateKey, drg__oms AS [Description], prvm__m2 AS LatestPrice
--    FROM drgers__
--	WHERE drg__rpn <> ''''
--) AS S2 RIGHT JOIN
--(
--	SELECT drg__ref, drg__rpn AS SubstrateKey, drg__oms AS [Description], prvm__m2 AS LatestPrice
--    FROM drgers__ AS drgers___2
--	WHERE drg__rpn <> ''''
--) AS S3 RIGHT JOIN
--drgers__ AS S ON S3.SubstrateKey = S.taal___8 LEFT OUTER JOIN
--(
--	SELECT drg__ref, drg__rpn AS SubstrateKey, drg__oms AS [Description], prvm__m2 AS LatestPrice
--    FROM drgers__ AS drgers___3
--	WHERE drg__rpn <> ''''
--) AS S4 ON S.taal___9 = S4.SubstrateKey ON S2.SubstrateKey = S.taal___7
' 
