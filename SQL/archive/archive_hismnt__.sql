CREATE TABLE [dbo].[archive_hismnt__] (
    [munt_ref] NVARCHAR (3)  CONSTRAINT [DF_archive_hismnt__munt_ref] DEFAULT ('') NOT NULL,
    [lchg_dat] DATE          CONSTRAINT [DF_archive_hismnt__lchg_dat] DEFAULT (CONVERT([date],'19800101',(112))) NOT NULL,
    [usernbr_] NVARCHAR (6)  CONSTRAINT [DF_archive_hismnt__usernbr_] DEFAULT ('') NOT NULL,
    [datum___] DATETIME2 (3) CONSTRAINT [DF_archive_hismnt__datum___] DEFAULT (CONVERT([datetime2](3),'19800101',(112))) NOT NULL,
    [koersakp] FLOAT (53)    CONSTRAINT [DF_archive_hismnt__koersakp] DEFAULT ((0)) NOT NULL,
    [koersvkp] FLOAT (53)    CONSTRAINT [DF_archive_hismnt__koersvkp] DEFAULT ((0)) NOT NULL,
    [koers_bi] FLOAT (53)    CONSTRAINT [DF_archive_hismnt__koers_bi] DEFAULT ((0)) NOT NULL,
    [rowid]    INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_hismnti1] PRIMARY KEY CLUSTERED ([munt_ref] ASC, [rowid] ASC)
);


GO

CREATE NONCLUSTERED INDEX [archive_hismnti0]
    ON [dbo].[archive_hismnt__]([munt_ref] ASC, [lchg_dat] ASC);


GO

