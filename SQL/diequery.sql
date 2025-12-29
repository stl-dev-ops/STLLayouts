/* End-Of-Life DIES */

SELECT arth_ref DieID, dies.stns_rpn DieKeyword, arthdref DieSKU, crea_dat Created, vak__ref StockLocation, teller__ Revolutions

FROM arthld__ tools JOIN

stnspr__ dies ON tools.arth_ref = dies.stns_ref

WHERE uitgeput = 'Y' /* End-Of-Life DIES */

AND dies.stns_rpn LIKE 'R-%'

AND dies.stns_rpn > 'R-473'

 

/* DIES used in a Job */

SELECT h.arth_ref, t.arth_rpn, h.arthdref, h.dat__beg, h.uur__beg, h.dat__end, h.uur__end, h.aantal__, h.wp___ref, m.wp_naam_, h.wn___ref, e.wn___rpn, h.ord__ref, o.omschr__

FROM hlpreg__ h LEFT JOIN

arthlp__ t ON h.arth_ref = t.arth_ref LEFT JOIN

werkpo__ m ON m.wp___ref = h.wp___ref LEFT JOIN

werknm__ e ON e.wn___ref = h.wn___ref LEFT JOIN

order___ o ON o.ord__ref = h.ord__ref

WHERE t.arth_rpn LIKE 'R-%' AND t.arth_rpn > 'R-473' AND h.dat__end >= DATEADD(YEAR, -1, GETDATE()) -- Last year only