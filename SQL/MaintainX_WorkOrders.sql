CREATE TABLE [dbo].[MaintainX_WorkOrders] (
    [id]                      INT             NOT NULL,
    [sequentialId]            INT             NULL,
    [assetId]                 INT             NULL,
    [locationId]              INT             NULL,
    [priority]                NVARCHAR (50)   NULL,
    [status]                  NVARCHAR (50)   NULL,
    [title]                   NVARCHAR (500)  NULL,
    [description]             NVARCHAR (MAX)  NULL,
    [createdAt]               DATETIME2 (7)   NULL,
    [updatedAt]               DATETIME2 (7)   NULL,
    [startDate]               DATETIME2 (7)   NULL,
    [dueDate]                 DATETIME2 (7)   NULL,
    [completedAt]             DATETIME2 (7)   NULL,
    [estimatedTime]           INT             NULL,
    [recurrenceType]          NVARCHAR (50)   NULL,
    [recurrenceInterval]      INT             NULL,
    [recurrenceDay]           INT             NULL,
    [procedureId]             INT             NULL,
    [procedureTitle]          NVARCHAR (255)  NULL,
    [progressOpenCount]       INT             NULL,
    [progressInProgressCount] INT             NULL,
    [progressOnHoldCount]     INT             NULL,
    [progressDoneCount]       INT             NULL,
    [thumbnailUrl]            NVARCHAR (1000) NULL,
    [type]                    NVARCHAR (50)   NULL,
    [full_json]               NVARCHAR (MAX)  NULL,
    [last_loaded_at]          DATETIME2 (7)   DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

