SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Collection context: order line rows (one row per sales line for an order)

CREATE OR ALTER VIEW dbo.vw_STLLayouts_OrderLines
AS
SELECT
    b.ord__ref    AS JobNumber,

    -- Friendly aliases for templating
    b.lyn__ref    AS LineId,
    b.bstvlgnr    AS LineNumber,

    b.afg__ref    AS ProductCode,
    b.afg__rpn    AS ProductKeyword,
    b.versiref    AS ProductVersion,

    b.afg_oms1    AS Description1,
    b.afg_oms2    AS Description2,

    -- Quantity fields (confirmed present on dbo.bstlyn__)
    b.beaantal    AS Quantity,
    b.b_aantal    AS QuantityOrdered,
    b.l_aantal    AS QuantityDelivered,
    b.f_aantal    AS QuantityInvoiced,
    b.p_aantal    AS QuantityPlanned,

    -- Raw columns for backward compatible token/mapping usage
    b.*
FROM dbo.bstlyn__ b;
GO
