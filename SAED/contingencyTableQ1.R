contingencyTableQ1 <- function(app, rep){

	app <- list(app)
	rep <- list(rep)

	#1. Não me é fácil estabelecer contatos com os professores; 1 muito fácil, 5 muito difícil
	#print(app)
	#bom_des_bom_rel_q1 = sum(app$q1 == 1) + sum(app$q1 == 2) 
	bom_des_bom_rel_q1 = sum(app$q1 < 3)
	
	#bom_des_mau_rel_q1 = sum(app$q1 == 4) + sum(app$q1 == 5) 
	bom_des_mau_rel_q1 = sum(app$q1 >= 3)
	
	#bom_des_rel_indef_q1 = sum(app$q1 == 3)
	
	#mau_des_bom_rel_q1 = sum(rep$q1 == 1) + sum(rep$q1 == 2)
	mau_des_bom_rel_q1 = sum(rep$q1 < 3)  
	
	#mau_des_mau_rel_q1 = sum(rep$q1 == 4) + sum(rep$q1 == 5)
	mau_des_mau_rel_q1 = sum(rep$q1 >= 3)
	
	#mau_des_rel_indef_q1 = sum(rep$q1 == 3)
	
	
	#contTable = matrix(ncol=3, nrow=2)
	contTable = matrix(ncol=3, nrow=3)
	
	contTable[1,1] = bom_des_bom_rel_q1
	contTable[1,2] = bom_des_mau_rel_q1

	
	contTable[2,1] = mau_des_bom_rel_q1
	contTable[2,2] = mau_des_mau_rel_q1

	contTable[1,3] = bom_des_bom_rel_q1 + bom_des_mau_rel_q1
	contTable[2,3] = mau_des_bom_rel_q1 + mau_des_mau_rel_q1
	contTable[3,3] = bom_des_bom_rel_q1 + bom_des_mau_rel_q1 + mau_des_bom_rel_q1 + mau_des_mau_rel_q1
	
	contTable[3,1] = bom_des_bom_rel_q1 + mau_des_bom_rel_q1
	contTable[3,2] = bom_des_mau_rel_q1 + mau_des_mau_rel_q1

	return(t(contTable))
}
