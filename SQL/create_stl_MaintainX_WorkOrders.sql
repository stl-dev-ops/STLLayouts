USE [sqlb00];
GO

CREATE TABLE [dbo].[stl_MaintainX_WorkOrders] (
    [id] INT NOT NULL,
    [sequentialId] INT NULL,
    [assetId] INT NULL,
    [locationId] INT NULL,
    [priority] NVARCHAR(100) NULL,
    [status] NVARCHAR(100) NULL,
    [title] NVARCHAR(1000) NULL,
    [description] NVARCHAR(MAX) NULL,
    [createdAt] DATETIME2(7) NULL,
    [updatedAt] DATETIME2(7) NULL,
    [startDate] DATETIME2(7) NULL,
    [dueDate] DATETIME2(7) NULL,
    [completedAt] DATETIME2(7) NULL,
    [estimatedTime] INT NULL,
    [recurrenceType] NVARCHAR(100) NULL,
    [recurrenceInterval] INT NULL,
    [recurrenceDay] INT NULL,
    [procedureId] INT NULL,
    [procedureTitle] NVARCHAR(510) NULL,
    [progressOpenCount] INT NULL,
    [progressInProgressCount] INT NULL,
    [progressOnHoldCount] INT NULL,
    [progressDoneCount] INT NULL,
    [thumbnailUrl] NVARCHAR(2000) NULL,
    [type] NVARCHAR(100) NULL,
    [full_json] NVARCHAR(MAX) NULL,
    [last_loaded_at] DATETIME2(7) NULL
);
