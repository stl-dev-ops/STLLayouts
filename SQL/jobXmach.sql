USE [sqlb00];
GO

SELECT
    clock.wp___ref AS MachineID,
    mach.wp_naam_ AS Machine,
    job.ord__ref AS JID,
    prod.afg__ref AS PID,
    art.afg_oms1 AS Description,
    job.kla__rpn AS Customer,
    MIN(clock.datum___) AS FirstClock,
    MAX(clock.datum___) AS LastClock
FROM order___ AS job
JOIN hispnt__ AS clock
    ON clock.ord__ref = job.ord__ref
JOIN werkpo__ AS mach
    ON mach.wp___ref = clock.wp___ref
JOIN v4vrs___ AS prod
    ON prod.off__ref = job.ord__ref
JOIN afgart__ AS art
    ON art.afg__ref = prod.afg__ref
WHERE
    clock.wp___ref IN ('7005', '7006', '7007')
GROUP BY
    clock.wp___ref,
    mach.wp_naam_,
    job.ord__ref,
    prod.afg__ref,
    art.afg_oms1,
    job.kla__rpn
HAVING
    (
        MIN(clock.datum___) BETWEEN DATEFROMPARTS(YEAR(GETDATE()), 1, 1) AND GETDATE()
        OR
        MAX(clock.datum___) BETWEEN DATEFROMPARTS(YEAR(GETDATE()), 1, 1) AND GETDATE()
    );
