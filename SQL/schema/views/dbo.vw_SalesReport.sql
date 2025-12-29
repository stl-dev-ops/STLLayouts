SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SalesReport]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_SalesReport]
AS


SELECT        InvoiceDate, InvoiceID, SequenceNumber, CustomerID, Customer, BrandID, Brand, SubstrateKey, ProductKW, Description1, Description2, Sales, InLogin, InvoicedQty, ProductGroupID, ProductGroup, JobID, OrderDate, lyn__ref, 
                         OrderSalesRep, SubstrateKey1, SubstrateKey2, bon__ref, arek_ref, arek_oms, CustomerSalesRep, ProductID, ProductDescription, RollSize, naam____, betk_ref, CustomerStreet, CustomerCity, CustomerState, CustomerZip, 
                         CustomerCountry, DeliveryStreet, DeliveryCity, DeliveryState, DeliveryZip, DeliveryCountry, amo__akn, pr_excl_, PriceType, RealShipmentDate, kla__ref, kla__rpn, TrackingNumber, CustomerRequestedDeliveryDate, bst__ref, 
                         CalculationID, SalesOrderCalculationID, l_aantal, fac_eenh, kom__ref, ExpectedShipDate, b_aantal, aant__e2, aant__e3, aant__e4, aant__e5, zynrefkl, SalesOrderComment, CustomersOrderNo, Job_QP_ID, Product_QP_ID, 
                         lbn__ref
FROM            dbo.stlSalesReportWarehouse AS srwh

' 
