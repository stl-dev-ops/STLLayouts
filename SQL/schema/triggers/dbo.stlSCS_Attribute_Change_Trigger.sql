SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[stlSCS_Attribute_Change_Trigger]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER stlSCS_Attribute_Change_Trigger 
   ON  dbo.stlSCS_Attribute
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    EXEC stlScratchCodeSelector_Drop_Create_View;

END' 
ALTER TABLE [dbo].[stlSCS_Attribute] ENABLE TRIGGER [stlSCS_Attribute_Change_Trigger]
