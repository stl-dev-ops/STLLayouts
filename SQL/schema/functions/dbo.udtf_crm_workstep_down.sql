SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udtf_crm_workstep_down]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION dbo.udtf_crm_workstep_down (@production_flow_id INT, @workstep_id INT)
RETURNS TABLE
   AS
RETURN
(
   WITH CTE_recur_Workstep_DOWN AS
      (
      SELECT a.production_flow_id,
             a.workstep_id,
             b.resource_id AS input_resource_id,
             ''W'' AS Origin,
             0 AS Level,
             CAST (a.workstep_id AS NVARCHAR (MAX)) AS Workstep_Path,
             a.workstep_id AS starting_workstep_id,
             NULL AS previous_workstep_id
        FROM pf_workstep__ a
             INNER JOIN pf_workstep_input__ b ON a.production_flow_id = b.production_flow_id
                                             AND a.workstep_id = b.workstep_id
       WHERE a.production_flow_id = @production_flow_id
         AND a.workstep_id = @workstep_id

      UNION ALL

      SELECT a.production_flow_id,
             a.workstep_id,
             a.resource_id AS input_resource_id,
             ''W'' AS Origin,
             c.level + 1 AS Level,
             c.Workstep_Path + ''_'' + CAST (a.workstep_id AS NVARCHAR (MAX)) AS Workstep_Path,
             c.starting_workstep_id,
             c.workstep_id AS previous_workstep_id
        FROM pf_workstep_input__ a
             INNER JOIN pf_workstep_output__     b ON a.production_flow_id = b.production_flow_id 
                                                 AND a.resource_id = b.resource_id
             INNER JOIN CTE_recur_Workstep_DOWN c ON c.production_flow_id = b.production_flow_id
                                                 AND c.workstep_id = b.workstep_id 
      )
   SELECT * 
     FROM CTE_recur_Workstep_DOWN
)' 
END

