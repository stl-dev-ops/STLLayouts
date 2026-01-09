SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Collection context: reservation rows (one row per reservation for an order)

CREATE OR ALTER VIEW dbo.vw_STLLayouts_Reservations
AS
SELECT
    r.ord__ref AS JobNumber,
    r.*
FROM dbo.resgrd__ r;
GO
