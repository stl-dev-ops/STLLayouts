CREATE TABLE [dbo].[archive_palet___] (
    [pal__ref]      NVARCHAR (25) CONSTRAINT [DF_archive_palet___pal__ref] DEFAULT ('') NOT NULL,
    [pallevid]      NVARCHAR (25) CONSTRAINT [DF_archive_palet___pallevid] DEFAULT ('') NOT NULL,
    [pal__oms]      NVARCHAR (40) CONSTRAINT [DF_archive_palet___pal__oms] DEFAULT ('') NOT NULL,
    [datum___]      DATE          CONSTRAINT [DF_archive_palet___datum___] DEFAULT (CONVERT([date],'19800101',(112))) NOT NULL,
    [vak__ref]      NVARCHAR (10) CONSTRAINT [DF_archive_palet___vak__ref] DEFAULT ('') NOT NULL,
    [dos__ref]      NVARCHAR (2)  CONSTRAINT [DF_archive_palet___dos__ref] DEFAULT ('') NOT NULL,
    [lev__ref]      NVARCHAR (6)  CONSTRAINT [DF_archive_palet___lev__ref] DEFAULT ('') NOT NULL,
    [pal__srt]      NVARCHAR (1)  CONSTRAINT [DF_archive_palet___pal__srt] DEFAULT ('1') NOT NULL,
    [jobnr_archive] NVARCHAR (10) CONSTRAINT [DF_archive_palet___jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [palet_i0] PRIMARY KEY CLUSTERED ([jobnr_archive] ASC, [pal__ref] ASC)
);


GO

