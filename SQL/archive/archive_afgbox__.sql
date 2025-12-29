CREATE TABLE [dbo].[archive_afgbox__] (
    [box__ref]      NVARCHAR (20) CONSTRAINT [DF_archive_afgbox__box__ref] DEFAULT ('') NOT NULL,
    [toestand]      NVARCHAR (1)  CONSTRAINT [DF_archive_afgbox__toestand] DEFAULT ('0') NOT NULL,
    [crea_dat]      DATE          CONSTRAINT [DF_archive_afgbox__crea_dat] DEFAULT (CONVERT([date],getdate(),(112))) NOT NULL,
    [crea_uur]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__crea_uur] DEFAULT ('  0:00') NOT NULL,
    [crea_usr]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__crea_usr] DEFAULT ('') NOT NULL,
    [pal__ref]      NVARCHAR (25) CONSTRAINT [DF_archive_afgbox__pal__ref] DEFAULT ('') NOT NULL,
    [vak__ref]      NVARCHAR (10) CONSTRAINT [DF_archive_afgbox__vak__ref] DEFAULT ('') NOT NULL,
    [uit__dat]      DATE          CONSTRAINT [DF_archive_afgbox__uit__dat] DEFAULT (CONVERT([date],'20491231',(112))) NOT NULL,
    [uit__uur]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__uit__uur] DEFAULT ('  0:00') NOT NULL,
    [uit__usr]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__uit__usr] DEFAULT ('') NOT NULL,
    [jobnr_uit]     NVARCHAR (10) CONSTRAINT [DF_archive_afgbox__jobnr_uit] DEFAULT ('') NOT NULL,
    [lev__dat]      DATE          CONSTRAINT [DF_archive_afgbox__lev__dat] DEFAULT (CONVERT([date],'20491231',(112))) NOT NULL,
    [lev__uur]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__lev__uur] DEFAULT ('  0:00') NOT NULL,
    [jobnrlev]      NVARCHAR (10) CONSTRAINT [DF_archive_afgbox__jobnrlev] DEFAULT ('') NOT NULL,
    [ord__ref]      NVARCHAR (6)  CONSTRAINT [DF_archive_afgbox__ord__ref] DEFAULT ('') NOT NULL,
    [dos__ref]      NVARCHAR (2)  CONSTRAINT [DF_archive_afgbox__dos__ref] DEFAULT ('') NOT NULL,
    [inhoud01]      NVARCHAR (40) CONSTRAINT [DF_archive_afgbox__inhoud01] DEFAULT ('') NOT NULL,
    [inhoud02]      NVARCHAR (40) CONSTRAINT [DF_archive_afgbox__inhoud02] DEFAULT ('') NOT NULL,
    [inhoud03]      NVARCHAR (40) CONSTRAINT [DF_archive_afgbox__inhoud03] DEFAULT ('') NOT NULL,
    [inhoud04]      NVARCHAR (40) CONSTRAINT [DF_archive_afgbox__inhoud04] DEFAULT ('') NOT NULL,
    [inhoud_flt01]  FLOAT (53)    CONSTRAINT [DF_archive_afgbox__inhoud_flt01] DEFAULT ((0)) NOT NULL,
    [inhoud_flt02]  FLOAT (53)    CONSTRAINT [DF_archive_afgbox__inhoud_flt02] DEFAULT ((0)) NOT NULL,
    [inhoud_flt03]  FLOAT (53)    CONSTRAINT [DF_archive_afgbox__inhoud_flt03] DEFAULT ((0)) NOT NULL,
    [inhoud_flt04]  FLOAT (53)    CONSTRAINT [DF_archive_afgbox__inhoud_flt04] DEFAULT ((0)) NOT NULL,
    [ex___rol]      FLOAT (53)    CONSTRAINT [DF_archive_afgbox__ex___rol] DEFAULT ((0)) NOT NULL,
    [rol_doos]      FLOAT (53)    CONSTRAINT [DF_archive_afgbox__rol_doos] DEFAULT ((0)) NOT NULL,
    [ex__rrol]      FLOAT (53)    CONSTRAINT [DF_archive_afgbox__ex__rrol] DEFAULT ((0)) NOT NULL,
    [rolrdoos]      FLOAT (53)    CONSTRAINT [DF_archive_afgbox__rolrdoos] DEFAULT ((0)) NOT NULL,
    [jobnr_archive] NVARCHAR (10) CONSTRAINT [DF_archive_afgbox__jobnr_archive] DEFAULT ('') NOT NULL,
    [rowid]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [archive_afgboxi0] PRIMARY KEY CLUSTERED ([jobnr_archive] ASC, [box__ref] ASC)
);


GO

