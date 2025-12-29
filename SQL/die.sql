SELECT b.antw_txt

FROM stnspr__ a

JOIN gegdet__ b ON a.drg__ref = b.det__ref 

WHERE b.tabname_ = 'stnspr__'
    AND b.vrg__ref = '000091'
    AND b.det__ref = '102679'