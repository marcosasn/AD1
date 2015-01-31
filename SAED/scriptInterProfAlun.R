	library(TeachingDemos) # necessário para usar z.test
	require('fBasics') #contém colStdevs
	
	calc_disc = read.csv('Dados - interação professor_aluno - Principal.csv', header=T)
	calc_disc_clean = na.omit(calc_disc)
	calc_disc_clean_rand = calc_disc_clean[sample(nrow(calc_disc_clean)),]
	#print(calc_disc_clean_rand)
	rows = dim(calc_disc_clean_rand)
	rows = rows[1]
	
	dataTrnRows = floor(0.75*rows)
	dataTstRows = floor(0.25*rows)
	#print(dataTrnRows)
	#print(dataTstRows)
	
	dataTrn = calc_disc_clean_rand[1:dataTrnRows,]
	dataTst = calc_disc_clean_rand[(dataTrnRows+1):rows,]
	#print(dataTrn)
	#print(dim(dataTrn))
	#print(dim(dataTst))
	
	app_trn = dataTrn[dataTrn[,1]==1,]
	rep_trn = dataTrn[dataTrn[,1]==-1,]
	
	allTrn = rbind(rep_trn, app_trn)
	
	#success failure condition for a proportion page 264 prob e-book
	source("successFailureConditionForProportions.R")
	successFailureConditionForProportions(allTrn)
	
	#print(skewness(bla))
	#print(skewness(allTrn))
	#source("barPlots.R")
	#barPlots(allTrn)
		
	app_tst = dataTst[dataTst[,1]==1,]
	rep_tst = dataTst[dataTst[,1]==-1,]
	
	#print(app_trn)
	#print(dim(app_trn))
	#print(dim(rep_trn))
		
	#source('contingencyTableQ14.R')
	#contTable1Trn = contingencyTableQ14(app_trn, rep_trn)
	#print(contTable1Trn)
	
	#contTable1Tst = contingencyTableQ14(app_tst, rep_tst)
	#print(contTable1Tst)
	
	#write.csv(app_tst,"csv_data_interaction/app_tstq14.csv")
	#write.csv(rep_tst,"csv_data_interaction/rep_tstq14.csv")
	
	#varGte3_given_app
