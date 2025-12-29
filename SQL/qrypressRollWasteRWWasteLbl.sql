SELECT pressRollWaste.pressRollWasteID, ((12/IIf(([pressRollWaste].[etiket_h]+[pressRollWaste].[tssnaf_h])=0,0.01,([pressRollWaste].[etiket_h]+[pressRollWaste].[tssnaf_h])))*[flatrolls])*[rewindWasteFt] AS rewindWasteLbl
FROM pressRollWaste;

