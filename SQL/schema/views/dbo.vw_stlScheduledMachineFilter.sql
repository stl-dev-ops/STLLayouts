SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledMachineFilter]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlScheduledMachineFilter
AS
SELECT        cat__ref, omschr__, plpl___1 Scheduled_Machines_Filter
FROM            plncat__
WHERE plpl___1 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___2
FROM            plncat__
WHERE plpl___2 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___3
FROM            plncat__
WHERE plpl___3 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___4
FROM            plncat__
WHERE plpl___4 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___5
FROM            plncat__
WHERE plpl___5 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___6
FROM            plncat__
WHERE plpl___6 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___7
FROM            plncat__
WHERE plpl___7 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___8
FROM            plncat__
WHERE plpl___8 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl___9
FROM            plncat__
WHERE plpl___9 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__10
FROM            plncat__
WHERE plpl__10 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__11
FROM            plncat__
WHERE plpl__11 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__12
FROM            plncat__
WHERE plpl__12 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__13
FROM            plncat__
WHERE plpl__13 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__14
FROM            plncat__
WHERE plpl__14 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__15
FROM            plncat__
WHERE plpl__15 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__16
FROM            plncat__
WHERE plpl__16 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__17
FROM            plncat__
WHERE plpl__17 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__18
FROM            plncat__
WHERE plpl__18 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__19
FROM            plncat__
WHERE plpl__19 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__20
FROM            plncat__
WHERE plpl__20 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__21
FROM            plncat__
WHERE plpl__21 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__22
FROM            plncat__
WHERE plpl__22 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__23
FROM            plncat__
WHERE plpl__23 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__24
FROM            plncat__
WHERE plpl__24 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__25
FROM            plncat__
WHERE plpl__25 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__26
FROM            plncat__
WHERE plpl__26 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__27
FROM            plncat__
WHERE plpl__27 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__28
FROM            plncat__
WHERE plpl__28 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__29
FROM            plncat__
WHERE plpl__29 <> ''''
UNION
SELECT        cat__ref, omschr__, plpl__30
FROM            plncat__
WHERE plpl__30 <> ''''
' 
