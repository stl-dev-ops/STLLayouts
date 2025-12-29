SELECT dbo_w_atl1__.wn___ref, dbo_w_atl1__.wp___ref, [wn_vnaam] & ' ' & [wn_naam_] AS wName
FROM dbo_w_atl1__ INNER JOIN dbo_werknm__ ON dbo_w_atl1__.wn___ref = dbo_werknm__.wn___ref
WHERE (((dbo_w_atl1__.[stoppen_])=' XX:XX') AND ((dbo_w_atl1__.[wp___ref]) In (select wp___ref from dbo_werkpo__ where kenmerk_ in ('Rewinding'))))
ORDER BY [wn_vnaam] & ' ' & [wn_naam_];

