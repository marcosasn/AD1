getContingencyTables <- function(app, rep){
	source('contingencyTableQ1.R')
	source('contingencyTableQ2.R')
	source('contingencyTableQ3.R')
	source('contingencyTableQ4.R')
	source('contingencyTableQ5.R')
	source('contingencyTableQ6.R')
	source('contingencyTableQ7.R')
	source('contingencyTableQ8.R')
	source('contingencyTableQ9.R')
	source('contingencyTableQ10.R')
	source('contingencyTableQ11.R')
	source('contingencyTableQ12.R')
	source('contingencyTableQ13.R')
	source('contingencyTableQ14.R')
	
	contTables = matrix(ncol=6, nrow=14)
	
	contTable1 = contingencyTableQ1(app, rep)
	
	contTables[1,1] = contTable1[1,1]
	contTables[1,2] = contTable1[1,2]
	contTables[1,3] = contTable1[1,3]
	contTables[1,4] = contTable1[2,1]
	contTables[1,5] = contTable1[2,2]
	contTables[1,6] = contTable1[2,3]
	
	contTable2 = contingencyTableQ2(app, rep)
	contTables[2,1] = contTable2[1,1]
	contTables[2,2] = contTable2[1,2]
	contTables[2,3] = contTable2[1,3]
	contTables[2,4] = contTable2[2,1]
	contTables[2,5] = contTable2[2,2]
	contTables[2,6] = contTable2[2,3]
	
	contTable3 = contingencyTableQ3(app, rep)
	contTables[3,1] = contTable3[1,1]
	contTables[3,2] = contTable3[1,2]
	contTables[3,3] = contTable3[1,3]
	contTables[3,4] = contTable3[2,1]
	contTables[3,5] = contTable3[2,2]
	contTables[3,6] = contTable3[2,3]
	
	contTable4 = contingencyTableQ4(app, rep)
	contTables[4,1] = contTable4[1,1]
	contTables[4,2] = contTable4[1,2]
	contTables[4,3] = contTable4[1,3]
	contTables[4,4] = contTable4[2,1]
	contTables[4,5] = contTable4[2,2]
	contTables[4,6] = contTable4[2,3]
	
	contTable5 = contingencyTableQ5(app, rep)
	contTables[5,1] = contTable5[1,1]
	contTables[5,2] = contTable5[1,2]
	contTables[5,3] = contTable5[1,3]
	contTables[5,4] = contTable5[2,1]
	contTables[5,5] = contTable5[2,2]
	contTables[5,6] = contTable5[2,3]
	
	contTable6 = contingencyTableQ6(app, rep)
	contTables[6,1] = contTable6[1,1]
	contTables[6,2] = contTable6[1,2]
	contTables[6,3] = contTable6[1,3]
	contTables[6,4] = contTable6[2,1]
	contTables[6,5] = contTable6[2,2]
	contTables[6,6] = contTable6[2,3]
	
	contTable7 = contingencyTableQ7(app, rep)
	contTables[7,1] = contTable7[1,1]
	contTables[7,2] = contTable7[1,2]
	contTables[7,3] = contTable7[1,3]
	contTables[7,4] = contTable7[2,1]
	contTables[7,5] = contTable7[2,2]
	contTables[7,6] = contTable7[2,3]
	
	contTable8 = contingencyTableQ8(app, rep)
	contTables[8,1] = contTable8[1,1]
	contTables[8,2] = contTable8[1,2]
	contTables[8,3] = contTable8[1,3]
	contTables[8,4] = contTable8[2,1]
	contTables[8,5] = contTable8[2,2]
	contTables[8,6] = contTable8[2,3]
	
	contTable9 = contingencyTableQ9(app, rep)
	contTables[9,1] = contTable9[1,1]
	contTables[9,2] = contTable9[1,2]
	contTables[9,3] = contTable9[1,3]
	contTables[9,4] = contTable9[2,1]
	contTables[9,5] = contTable9[2,2]
	contTables[9,6] = contTable9[2,3]
	
	contTable10 = contingencyTableQ10(app, rep)
	contTables[10,1] = contTable10[1,1]
	contTables[10,2] = contTable10[1,2]
	contTables[10,3] = contTable10[1,3]
	contTables[10,4] = contTable10[2,1]
	contTables[10,5] = contTable10[2,2]
	contTables[10,6] = contTable10[2,3]
	
	contTable11 = contingencyTableQ11(app, rep)
	contTables[11,1] = contTable11[1,1]
	contTables[11,2] = contTable11[1,2]
	contTables[11,3] = contTable11[1,3]
	contTables[11,4] = contTable11[2,1]
	contTables[11,5] = contTable11[2,2]
	contTables[11,6] = contTable11[2,3]
	
	contTable12 = contingencyTableQ12(app, rep)
	contTables[12,1] = contTable12[1,1]
	contTables[12,2] = contTable12[1,2]
	contTables[12,3] = contTable12[1,3]
	contTables[12,4] = contTable12[2,1]
	contTables[12,5] = contTable12[2,2]
	contTables[12,6] = contTable12[2,3]
	
	contTable13 = contingencyTableQ13(app, rep)
	contTables[13,1] = contTable13[1,1]
	contTables[13,2] = contTable13[1,2]
	contTables[13,3] = contTable13[1,3]
	contTables[13,4] = contTable13[2,1]
	contTables[13,5] = contTable13[2,2]
	contTables[13,6] = contTable13[2,3]
	
	contTable14 = contingencyTableQ14(app, rep)
	contTables[14,1] = contTable14[1,1]
	contTables[14,2] = contTable14[1,2]
	contTables[14,3] = contTable14[1,3]
	contTables[14,4] = contTable14[2,1]
	contTables[14,5] = contTable14[2,2]
	contTables[14,6] = contTable14[2,3]

	return(contTables)	
}
