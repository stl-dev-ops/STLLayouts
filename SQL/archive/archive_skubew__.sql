CREATE TABLE [dbo].[archive_skubew__] (
    [afg__ref]      NVARCHAR (6)  CONSTRAINT [DF_archive_skubew__afg__ref] DEFAULT ('') NOT NULL,
    [sku__ref]      NVARCHAR (20) CONSTRAINT [DF_archive_skubew__sku__ref] DEFAULT ('') NOT NULL,
    [box__ref]      NVARCHAR (20) CONSTRAINT [DF_archive_skubew__box__ref] DEFAULT ('') NOT NULL,
    [pal__ref]      NVARCHAR (25) CONSTRAINT [DF_archive_skubew__pal__ref] DEFAULT ('') NOT NULL,
    [lyn__ref]      NVARCHAR (10) CONSTRAINT [DF_archive_skubew__lyn__ref] DEFAULT ('') NOT NULL,
    [rmalynrf]      NVARCHAR (10) CONSTRAINT [DF_archive_skubew__rmalynrf] DEFAULT ('') NOT NULL,
    [toestand]      NVARCHAR (1)  CONSTRAINT [DF_archive_skubew__toestand] DEFAULT ('') NOT NULL,
    [jobnr_vw]      NVARCHAR (10) CONSTRAINT [DF_archive_skubew__jobnr_vw] DEFAULT ('') NOT NULL,
    [aant__ex]      FLOAT (53)    CONSTRAINT [DF_archive_skubew__aant__ex] DEFAULT ((0)) NOT NULL,
    [vak__ref]      NVARCHAR (10) CONSTRAINT [DF_archive_skubew__vak__ref] DEFAULT ('') NOT NULL,
    [jobnr_archive] NVARCHAR (10) CONSTRAINT [DF_archive_skubew__jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_skubewi0] PRIMARY KEY CLUSTERED ([rowid] ASC)
);


GO

CREATE NONCLUSTERED INDEX [archive_skubewi2]
    ON [dbo].[archive_skubew__]([lyn__ref] ASC, [toestand] ASC);


GO

CREATE NONCLUSTERED INDEX [archive_skubewi3]
    ON [dbo].[archive_skubew__]([toestand] ASC, [rmalynrf] ASC);


GO

CREATE NONCLUSTERED INDEX [archive_skubewi1]
    ON [dbo].[archive_skubew__]([sku__ref] ASC, [toestand] ASC, [afg__ref] ASC);


GO

