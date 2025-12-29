SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRedstoneLoadStatusUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlRedstoneLoadStatusUpdate] AS' 
END
-- =============================================
-- Author:		<Jon Dragt>
-- Create date: <7/11/23>
-- Description:	Updates PO Detail grsbon__.grs__com with inbound information from Redstone
--   @PackingListRef nvarchar(10), = 3G Load Number
--   @Carrier nvarchar(10), = ‘REDSTO-001’  
--   @TrackingNumber nvarchar(50),  [3G Carrier SCAC] - [Load Pro Number]
--   @TotalCost money -  3G Net Order Charge Amount
--	 @ExpectedPickupDate (Load Planned Start Date in 3G) – UTC   [DATETIME]
--	 @ExpectedDeliveryDate (Load Planned End Date in 3G) – UTC  [DATETIME]
--	 @LoadStatus (Accepted, InTransit, Delivered, Closed)  (3G Load status) varchar(30)
--	 @LoadDateCreated  [3G Load Date Created UTC ]  [DATETIME]
--	 @LoadDateLastModified [ 3G Load Date Modified UTC] [DATETIME]
--	 @OrderLineNumber  noted on STL PO, supplier supplies to Redstone. Allows us to tie to grsbon__ record

--   NOTE: ALL datetime parameters are defined as NOT nullable, so we need some date in all of those fields.
-- =============================================
-- Carrier = trsp_rpn from the levbas__
ALTER PROCEDURE [dbo].[stlRedstoneLoadStatusUpdate]
    @PackingListRef nvarchar(10),
	@Carrier nvarchar(10),
    @TrackingNumber nvarchar(50),
	@TotalCost money,
	@ExpectedPickupDate datetime,
	@ExpectedDeliveryDate datetime,
	@LoadStatus nvarchar(30),
	@LoadDateCreated datetime,
	@LoadDateLastModified datetime,
	@OrderLineNumber nvarchar(10)  -- 6 is the length in Cerm, check with Redstone if they plan on sending more than 6 for some reason

AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @grs__com nvarchar(max)
		DECLARE @preString nvarchar(max)
		DECLARE @Tstatus int

		DECLARE @tPackingListRef nvarchar(10)
		DECLARE @tCarrier nvarchar(10)
		DECLARE @tTrackingNumber nvarchar(50)
		DECLARE @tTotalCost money
		DECLARE @tExpectedPickupDate datetime
		DECLARE @tExpectedDeliveryDate datetime
		DECLARE @tLoadStatus nvarchar(30)
		DECLARE @tLoadDateCreated datetime
		DECLARE @tLoadDateLastModified datetime
		DECLARE @tOrderLineNumber nvarchar(10)  -- 6 is the length in Cerm, check with Redstone if they plan on sending more than 6 for some reason
												--Update I believe Redstone is sending 10


		BEGIN TRY
			--First check if we've already seen this information by checking the log
			SELECT top 1 @tPackingListRef = PackingListRef, 
						@tCarrier = Carrier,
						@tTrackingNumber = TrackingNumber,
						@tTotalCost = TotalCost,
						@tExpectedPickupDate = ExpectedPickupDate,
						@tExpectedDeliveryDate = ExpectedDeliveryDate,
						@tLoadStatus = LoadStatus,
						@tLoadDateCreated = LoadDateCreated,
						@tOrderLineNumber = OrderLineNumber
			FROM stlRedstoneLoadStatusUpdateLog where OrderLineNumber = @OrderLineNumber and ImportStatus <> 'DUPLICATE' ORDER BY stlRedstoneLoadStatusUpdateLogID DESC
			if @tOrderLineNumber IS NOT null --We have to check for a duplicate
			BEGIN
				IF @tPackingListRef = @PackingListRef AND @tCarrier = @Carrier AND @tTrackingNumber = @TrackingNumber AND
					@tTotalCost = @TotalCost AND @tExpectedPickupDate = @ExpectedPickupDate AND @tExpectedDeliveryDate = @ExpectedDeliveryDate AND
					@tLoadStatus = @LoadStatus AND @tLoadDateCreated = @LoadDateCreated --Don't bother checking Last Modified date
				BEGIN
					-- Log the Duplicate and bugger off
					insert into stlRedstoneLoadStatusUpdateLog (PackingListRef,Carrier, TrackingNumber,TotalCost,ExpectedPickupDate,
						ExpectedDeliveryDate,LoadStatus,LoadDateCreated,LoadDateLastModified,OrderLineNumber, ImportStatus)
						VALUES(@PackingListRef,@Carrier, @TrackingNumber,@TotalCost,@ExpectedPickupDate,
						@ExpectedDeliveryDate,@LoadStatus,@LoadDateCreated,@LoadDateLastModified,@OrderLineNumber, 'DUPLICATE');
					--bugger off
					IF @@TRANCOUNT > 0
						COMMIT TRANSACTION;	
					RETURN @@TRANCOUNT --SUCCESS
				END
			END
			SET @Tstatus = 0
			SET @preString = 'PLR:' + @PackingListRef + ' | C:' + @Carrier + ' | TN:' + @TrackingNumber + ' | TC:' + CONVERT(nvarchar(10),@TotalCost) + ' | EPD:' + Convert(nvarchar(10), @ExpectedPickupDate, 101) + ' | EDD:' + Convert(nvarchar(10), @ExpectedDeliveryDate, 101) + ' | LS:' + @LoadStatus + ' | LDC:' + Convert(nvarchar(10), @LoadDateCreated, 101) + ' | LDLM:' + Convert(nvarchar(10), @LoadDateLastModified, 101) +
			CHAR(13)+CHAR(10) + '---------------------------';

			--Look up the grsbon__ record and get the comment field
			select @grs__com = grs__com from grsbon__ where grs__vnr = @OrderLineNumber
			if @grs__com IS NOT null
			BEGIN
				update grsbon__ set grs__com = @preString + CHAR(13)+CHAR(10) + @grs__com where grs__vnr = @OrderLineNumber
			END
			ELSE
			BEGIN
				SET @Tstatus = 1
			END



				-- Log the tStatus
			IF @Tstatus = 0
			BEGIN
				insert into stlRedstoneLoadStatusUpdateLog (PackingListRef,Carrier, TrackingNumber,TotalCost,ExpectedPickupDate,
					ExpectedDeliveryDate,LoadStatus,LoadDateCreated,LoadDateLastModified,OrderLineNumber, ImportStatus)
					VALUES(@PackingListRef,@Carrier, @TrackingNumber,@TotalCost,@ExpectedPickupDate,
					@ExpectedDeliveryDate,@LoadStatus,@LoadDateCreated,@LoadDateLastModified,@OrderLineNumber, 'SUCCESS');
			END
			ELSE
			BEGIN
				insert into stlRedstoneLoadStatusUpdateLog (PackingListRef,Carrier, TrackingNumber,TotalCost,ExpectedPickupDate,
					ExpectedDeliveryDate,LoadStatus,LoadDateCreated,LoadDateLastModified,OrderLineNumber, ImportStatus)
					VALUES(@PackingListRef,@Carrier, @TrackingNumber,@TotalCost,@ExpectedPickupDate,
					@ExpectedDeliveryDate,@LoadStatus,@LoadDateCreated,@LoadDateLastModified,@OrderLineNumber, 'Error: Could not find grs__vnr');
			END

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
			--log the error
			insert into stlRedstoneLoadStatusUpdateLog (PackingListRef,Carrier, TrackingNumber,TotalCost,ExpectedPickupDate,
					ExpectedDeliveryDate,LoadStatus,LoadDateCreated,LoadDateLastModified,OrderLineNumber, ImportStatus)
					VALUES(@PackingListRef,@Carrier, @TrackingNumber,@TotalCost,@ExpectedPickupDate,
					@ExpectedDeliveryDate,@LoadStatus,@LoadDateCreated,@LoadDateLastModified,@OrderLineNumber, 'Error: ' + ERROR_MESSAGE());
		END CATCH;
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS


