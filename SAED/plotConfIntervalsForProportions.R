#Funcao para desenhar o intervalo de confianca para proporcoes
#param conf_level: nivel de confianca
#param app: alunos com bom desempenho
#param rep: alunos com mal desempenho
#param nQuestions: numero de questoes dos dados

plotConfIntervalsForProportions <- function(conf_level, app, rep, nQuestions){
#inspirado no código http://www.math.hawaii.edu/~grw/Classes/2013-2014/2014Spring/Math472_1/MyPlotCI.html
	source('conf_interv_function_proportions.R')
	source('getContingencyTables.R')
	
	require(plotrix) #which contains the plotCI function
	
	contTables = getContingencyTables(app, rep)
	
	app_m = data.matrix(app)
	rep_m = data.matrix(rep)
	
	n_app = dim(app)
	n_app = n_app[1]
	
	n_rep = dim(rep)
	n_rep = n_rep[1]
	
	y = matrix(ncol=2*nQuestions, nrow=1)
	
	my_ci = matrix(nrow=2, ncol=2*nQuestions)
	
	z = matrix(nrow=1, ncol=2*nQuestions)
	
	question = 1	
	loop_end = seq(1, 2*nQuestions, by=2)
	for (index in loop_end) {
		x_app = contTables[question, 5]/n_app #bom_des_bom_rel, bom_des_mau_rel, bom_des_rel_indef, mau_des_bom_rel, mau_des_mau_rel, mau_des_rel_indef
		
		x_rep = contTables[question, 4]/n_rep #bom_des_bom_rel, bom_des_mau_rel, bom_des_rel_indef, mau_des_bom_rel, mau_des_mau_rel, mau_des_rel_indef

		pooled_estimate = (x_app + x_rep)/(n_app + n_rep) # página 272 do livro prob stats online

		y[1,index] = x_app
		y[1, index+1] = x_rep
		
		my_ci_app = conf_interv_function_proportions(conf_level, pooled_estimate, x_app, n_app, n_rep)	
		my_ci_rep = conf_interv_function_proportions(conf_level, pooled_estimate, x_rep, n_app, n_rep)
		
		my_ci[1,index] = my_ci_app[1,1]
		my_ci[2,index] = my_ci_app[2,1]
				
		my_ci[1,index+1] = my_ci_rep[1,1]
		my_ci[2,index+1] = my_ci_rep[2,1]
		
		z[1,index] = "Blue"
		z[1, index+1] = "Red"
		
		question = question+1
	}
	
	x = seq(1, 2*nQuestions, by=1)

	setEPS()
	postscript('conf_intervals_proportions.eps')
	
		plotCI(x = x, y = y, li = my_ci[1, ], ui = my_ci[2, ], col = z, lwd = 3, ylim = c(-0.1, 1.5))	
		grid(nx = 14, ny = 5, col = "lightgray", lty = "dotted", lwd = par("lwd"), equilogs = TRUE)
	dev.off();
}
