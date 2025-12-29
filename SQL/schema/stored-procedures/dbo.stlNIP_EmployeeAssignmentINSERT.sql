SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignmentINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlNIP_EmployeeAssignmentINSERT] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 12/20/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlNIP_EmployeeAssignmentINSERT]
	-- Add the parameters for the stored procedure here
	@EmployeeAssignmentID  int OUTPUT,
	@empNo                 int,
	@DepartmentID          nvarchar(6),
	@PositionID            nvarchar(6),
	@ShiftID               nvarchar(6),
	@StartDate             nvarchar(10),
	@EndDate               nvarchar(10)
AS
BEGIN TRANSACTION
	DECLARE @_DepartmentID int,
			@_PositionID   int,
			@_ShiftID      int,
			@_StartDate    datetime,
			@_EndDate      datetime

	BEGIN TRY

	IF ISNUMERIC(@DepartmentID) <> 0
	BEGIN
		SET @_DepartmentID = CAST(@DepartmentID AS int);
	END
	IF ISNUMERIC(@PositionID) <> 0
	BEGIN
		SET @_PositionID = CAST(@PositionID AS int);
	END
	IF ISNUMERIC(@ShiftID) <> 0
	BEGIN
		SET @_ShiftID = CAST(@ShiftID AS int);
	END
	IF (ISDATE(@StartDate) = 1)
	BEGIN
		SET @_StartDate = CAST(@StartDate AS datetime)
	END
	IF (ISDATE(@EndDate) = 1)
	BEGIN
		SET @_EndDate = CAST(@EndDate AS datetime)
	END

	INSERT INTO stlNIP_EmployeeAssignments (empNo, DepartmentID, PositionID, ShiftID, StartDate, EndDate)
	VALUES (@empNo, @_DepartmentID, @_PositionID, @_ShiftID, @_StartDate, @_EndDate)

	SELECT @EmployeeAssignmentID = SCOPE_IDENTITY();

	END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

