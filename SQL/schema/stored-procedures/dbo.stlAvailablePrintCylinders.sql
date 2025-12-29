SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlAvailablePrintCylinders]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlAvailablePrintCylinders] AS' 
END



-- =============================================
-- Author:		<jeff> 
-- Create date: <10/30/2023>

-- =============================================
ALTER PROCEDURE [dbo].[stlAvailablePrintCylinders]
	@LabelSize float
AS
	BEGIN

	DECLARE @Result TABLE 
			(
				ID nvarchar(3),
				StepDie float,
				StepInch float,
				StepTeeth float,
				LableLength float,
				LabelGap float,
				TotalRepeat float,
				ScratchOffPrintCylinders int,
				HotmeltAdhesivePrintCylinders int
			);

	DECLARE @i int = 0;

	WHILE @i < 120
	BEGIN
		SET @i = @i + 1

		IF (CAST(@i AS float) / 8.0 >= @LabelSize)
		BEGIN
			INSERT INTO @Result (ID, StepDie, StepInch, StepTeeth, LableLength, LabelGap, TotalRepeat, ScratchOffPrintCylinders, HotmeltAdhesivePrintCylinders)
			SELECT
			trm__ref ID,
			omwentmm StepDie, 
			omwentmm StepInch,
			omwentel StepTeeth,
			@LabelSize LableLength,
			(CAST(@i AS float) / 8.0) - @LabelSize LabelGap, 
			(CAST(@i AS float) / 8.0)  TotalRepeat, 
			aantal_0 ScratchOffPrintCylinders, 
			aantal_1 HotmeltAdhesivePrintCylinders

			FROM eprstr__ pc

			WHERE blokkeer = 'N' AND (aantal_0 > 0 OR aantal_1 > 0) AND prs__ref = '5001' 
			AND CASE WHEN omwentmm/(CAST(@i AS float)/8.0) = ROUND(omwentmm/(CAST(@i AS float)/8.0), 0) THEN omwentmm/(CAST(@i AS float)/8.0) ELSE NULL END IS NOT NULL
			

		END
	END

	select * from @Result

	END

