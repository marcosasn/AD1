#Função para geração do intervalo de confiança para proporções
#conf_level: nível de confiança
#param pooled_p_est: estimador de p(alunos com bom desempenho)[(X1+X2)/(n1+n2)]
#param p_est: estimador de p
#param n1: tamanho da amostra 1
#param n2: tamanho da amostra 2

conf_interv_function_proportions <- function(conf_level, pooled_p_est, p_est, n1, n2){
	
	#verificar tamanho das amostras....
	z.value <- qnorm(conf_level)
	
	v1 = pooled_p_est*(1 - pooled_p_est)/n1
	v2 = pooled_p_est*(1 - pooled_p_est)/n2
	
	se <- sqrt(v1 + v2) #página 273 do livro prob stat online
	
	my_ci = matrix(nrow=2, ncol=1)
	
	my_ci[1,1] =  p_est - z.value*se
	my_ci[2,1] =  p_est + z.value*se	

	return (my_ci)
}

