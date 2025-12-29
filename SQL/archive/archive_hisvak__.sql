CREATE TABLE [dbo].[archive_hisvak__] (
    [soort___]      NVARCHAR (1)  CONSTRAINT [DF_archive_hisvak__soort___] DEFAULT ('') NOT NULL,
    [ref_____]      NVARCHAR (20) CONSTRAINT [DF_archive_hisvak__ref_____] DEFAULT ('') NOT NULL,
    [sku__ref]      NVARCHAR (20) CONSTRAINT [DF_archive_hisvak__sku__ref] DEFAULT ('') NOT NULL,
    [datum___]      DATE          CONSTRAINT [DF_archive_hisvak__datum___] DEFAULT (CONVERT([date],'19800101',(112))) NOT NULL,
    [uur_____]      NVARCHAR (6)  CONSTRAINT [DF_archive_hisvak__uur_____] DEFAULT ('') NOT NULL,
    [wuser___]      NVARCHAR (50) CONSTRAINT [DF_archive_hisvak__wuser___] DEFAULT ('') NOT NULL,
    [vak__old]      NVARCHAR (10) CONSTRAINT [DF_archive_hisvak__vak__old] DEFAULT ('') NOT NULL,
    [vak__new]      NVARCHAR (10) CONSTRAINT [DF_archive_hisvak__vak__new] DEFAULT ('') NOT NULL,
    [jobnr_archive] NVARCHAR (10) CONSTRAINT [DF_archive_hisvak__jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_hisvaki0] PRIMARY KEY CLUSTERED ([rowid] ASC)
);


GO

