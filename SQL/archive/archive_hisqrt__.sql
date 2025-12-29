CREATE TABLE [dbo].[archive_hisqrt__] (
    [soort___]      NVARCHAR (1)  CONSTRAINT [DF_archive_hisqrt__soort___] DEFAULT ('0') NOT NULL,
    [ref_____]      NVARCHAR (20) CONSTRAINT [DF_archive_hisqrt__ref_____] DEFAULT ('') NOT NULL,
    [sku__ref]      NVARCHAR (20) CONSTRAINT [DF_archive_hisqrt__sku__ref] DEFAULT ('') NOT NULL,
    [datum___]      DATE          CONSTRAINT [DF_archive_hisqrt__datum___] DEFAULT (CONVERT([date],'19800101',(112))) NOT NULL,
    [uur_____]      NVARCHAR (6)  CONSTRAINT [DF_archive_hisqrt__uur_____] DEFAULT ('  0:00') NOT NULL,
    [user____]      NVARCHAR (50) CONSTRAINT [DF_archive_hisqrt__user____] DEFAULT ('') NOT NULL,
    [tst__qrt_old]  NVARCHAR (1)  CONSTRAINT [DF_archive_hisqrt__tst__qrt_old] DEFAULT ('1') NOT NULL,
    [in___qrt_old]  FLOAT (53)    CONSTRAINT [DF_archive_hisqrt__in___qrt_old] DEFAULT ((0)) NOT NULL,
    [komm_qrt_old]  NVARCHAR (50) CONSTRAINT [DF_archive_hisqrt__komm_qrt_old] DEFAULT ('') NOT NULL,
    [tst__qrt_new]  NVARCHAR (1)  CONSTRAINT [DF_archive_hisqrt__tst__qrt_new] DEFAULT ('1') NOT NULL,
    [in___qrt_new]  FLOAT (53)    CONSTRAINT [DF_archive_hisqrt__in___qrt_new] DEFAULT ((0)) NOT NULL,
    [komm_qrt_new]  NVARCHAR (50) CONSTRAINT [DF_archive_hisqrt__komm_qrt_new] DEFAULT ('') NOT NULL,
    [beweging]      INT           CONSTRAINT [DF_archive_hisqrt__beweging] DEFAULT ((0)) NOT NULL,
    [jobnr_archive] NVARCHAR (10) CONSTRAINT [DF_archive_hisqrt__jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_hisqrti0] PRIMARY KEY CLUSTERED ([rowid] ASC)
);


GO

