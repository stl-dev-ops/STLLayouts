SELECT clock.wn___ref,
		name.wn_vnaam,
		mach.wp_naam_,
		*
  FROM w_atl1__ clock
  JOIN werknm__ name
	ON name.wn___ref = clock.wn___ref
  JOIN werkpo__ mach
	ON mach.wp___ref = clock.wp___ref
WHERE name.wn_vnaam LIKE '%isaiah%'

ORDER BY clock.datum___ DESC
