#Descri��o
##Login: 
Nome de usu�rio (funcion�rio) e senha devem coincidir com os termos cadastrados. 
Tela inicial do sistema: 
S�o apresentados os m�dulos do sistema: Cadastros (clientes, funcion�rios, ve�culos, servi�os e produtos) e pedidos. 

No modulo de cadastro poder� escolher entre um dos tipos de cadastro a ser realizado - clientes, funcion�rios, ve�culos ou produtos � 
No modulo de cadastro de clientes ser�o necess�rios campos para preenchimento de Nome, CPF, endere�o, telefone e e-mail. 
No modulo de cadastro de funcion�rios ser�o necess�rios campos para preenchimento de Nome, CPF, endere�o, telefone e e-mail assim como no modulo de cadastro de clientes, acrescendo o sal�rio, data de contrata��o e carga horaria di�ria. 
No modulo cadastro de ve�culos, ser�o necess�rios campos para o preenchimento da marca, modelo do carro. 
No modulo de cadastro de produtos, ser�o necess�rios campos para preenchimento do nome do produto, marca, fornecedor e quantidade adquirida. 
No modulo de cadastro de servi�os ser�o necess�rios campos para o preenchimento do nome do servi�o, o pre�o do servi�o e tempo m�dio para realiza��o (por servi�o) e se o servi�o exige produto para sua realiza��o. Se o uso de produtos se fizer necess�rio, puxar pelo select do cadastro de produtos assim como sua quantidade a ser utilizada. 

Na realiza��o de um pedido, haver� o n�mero do pedido que ser� incrementado a cada novo pedido salvo. O nome do cliente, o nome do funcion�rio vendedor do servi�o, funcion�rio respons�vel pela execu��o do servi�o, o servi�o a ser realizado e a sua quantidade (a quantidade ser� fator multiplicativo para o pre�o). O pedido pode conter apenas servi�os, servi�os e produtos ou apenas produtos. 
Ao salvar o pedido ser� gerado seu n�mero (n�mero de pedido ++) e salvo no banco. 
O pedido dever� ser aprovado para ser enviado para a realiza��o (bot�o aprovar pedido). 
Ao aprovar o pedido, os seus valores ser�o enviados ao modulo �faturamento� como contas a receber em aberto. 
Com o pedido salvo, ser� poss�vel imprimi-lo, cancel�-lo, alter�-lo e finaliz�-lo. 
Quando o pedido � aprovado, o servi�o pode ser encaminhado para a execu��o. 
Finalizando a execu��o do servi�o � necess�rio finalizar o pedido. Ao finalizar o pedido a tela do faturamento correspondente deve abrir em pop-up para baixa do valor (valor recebido). 
Faturamento **** Valores a receber e valores recebidos. 
A tela inicial pode conter uma pesquisa para o pedido. Pelo n�mero do pedido pode ser carregado seu faturamento correspondente. 

 