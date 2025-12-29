CREATE TABLE [dbo].[archive_histst_afgsku__] (
    [tabname_]      NVARCHAR (100)  CONSTRAINT [DF_archive_histst_afgsku__tabname_] DEFAULT ('') NOT NULL,
    [fldname_]      NVARCHAR (100)  CONSTRAINT [DF_archive_histst_afgsku__fldname_] DEFAULT ('') NOT NULL,
    [det__ref]      NVARCHAR (20)   CONSTRAINT [DF_archive_histst_afgsku__det__ref] DEFAULT ('') NOT NULL,
    [datum___]      DATE            CONSTRAINT [DF_archive_histst_afgsku__datum___] DEFAULT (CONVERT([date],'19800101',(112))) NOT NULL,
    [uur_____]      NVARCHAR (6)    CONSTRAINT [DF_archive_histst_afgsku__uur_____] DEFAULT ('') NOT NULL,
    [username]      NVARCHAR (30)   CONSTRAINT [DF_archive_histst_afgsku__username] DEFAULT ('') NOT NULL,
    [jobnr_vw]      NVARCHAR (10)   CONSTRAINT [DF_archive_histst_afgsku__jobnr_vw] DEFAULT ('') NOT NULL,
    [tstd_old]      NVARCHAR (4)    CONSTRAINT [DF_archive_histst_afgsku__tstd_old] DEFAULT ('') NOT NULL,
    [tstd_new]      NVARCHAR (4)    CONSTRAINT [DF_archive_histst_afgsku__tstd_new] DEFAULT ('') NOT NULL,
    [comment_]      NVARCHAR (50)   CONSTRAINT [DF_archive_histst_afgsku__comment_] DEFAULT ('') NOT NULL,
    [comment2]      NVARCHAR (1024) CONSTRAINT [DF_archive_histst_afgsku__comment2] DEFAULT ('') NOT NULL,
    [jobnr_archive] NVARCHAR (10)   CONSTRAINT [DF_archive_histst_afgsku__jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_histst_afgskui0] PRIMARY KEY CLUSTERED ([rowid] ASC)
);


GO

CREATE NONCLUSTERED INDEX [archive_histst_afgskui2]
    ON [dbo].[archive_histst_afgsku__]([jobnr_archive] ASC, [tabname_] ASC, [det__ref] ASC, [fldname_] ASC);


GO

