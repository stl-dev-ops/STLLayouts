SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlScratchCodeSelector_Drop_Create_View]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlScratchCodeSelector_Drop_Create_View] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlScratchCodeSelector_Drop_Create_View]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @query AS NVARCHAR(MAX);

	if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'vw_stlScratchCodeSelector' AND TABLE_SCHEMA = 'dbo')
		DROP VIEW dbo.vw_stlScratchCodeSelector;

	SELECT @query = 'CREATE VIEW vw_stlScratchCodeSelector AS SELECT * FROM (
					 SELECT C.klcodref AS ScratchCode, A.Attribute, CASE WHEN SC.Answer = 1 THEN ''Yes'' ELSE ''No'' END AS [Answer]
					 FROM stlSCS_ScratchCodeAttribute AS SC RIGHT OUTER JOIN
                     klrcod__ AS C ON SC.klcodref = C.klcodref LEFT OUTER JOIN
                     stlSCS_Attribute AS A ON SC.stlSCS_AttributeID = A.ID
					 WHERE (C.klcodref IN
                             (SELECT klcod_fr
                              FROM eprskl__
                              WHERE (prs__ref = ''5001'')))) AS t
					PIVOT (MAX(Answer) 
                    FOR [Attribute] IN( ' + STUFF((SELECT distinct ',' +
                    QUOTENAME([Attribute]) FROM stlSCS_Attribute WHERE Blocked = 0
                     FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '') + ' )' + ' ) AS p';

	execute(@query);

	
END

