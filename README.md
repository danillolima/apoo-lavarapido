#Descrição
##Login: 
Nome de usuário (funcionário) e senha devem coincidir com os termos cadastrados. 
Tela inicial do sistema: 
São apresentados os módulos do sistema: Cadastros (clientes, funcionários, veículos, serviços e produtos) e pedidos. 

No modulo de cadastro poderá escolher entre um dos tipos de cadastro a ser realizado - clientes, funcionários, veículos ou produtos – 
No modulo de cadastro de clientes serão necessários campos para preenchimento de Nome, CPF, endereço, telefone e e-mail. 
No modulo de cadastro de funcionários serão necessários campos para preenchimento de Nome, CPF, endereço, telefone e e-mail assim como no modulo de cadastro de clientes, acrescendo o salário, data de contratação e carga horaria diária. 
No modulo cadastro de veículos, serão necessários campos para o preenchimento da marca, modelo do carro. 
No modulo de cadastro de produtos, serão necessários campos para preenchimento do nome do produto, marca, fornecedor e quantidade adquirida. 
No modulo de cadastro de serviços serão necessários campos para o preenchimento do nome do serviço, o preço do serviço e tempo médio para realização (por serviço) e se o serviço exige produto para sua realização. Se o uso de produtos se fizer necessário, puxar pelo select do cadastro de produtos assim como sua quantidade a ser utilizada. 

Na realização de um pedido, haverá o número do pedido que será incrementado a cada novo pedido salvo. O nome do cliente, o nome do funcionário vendedor do serviço, funcionário responsável pela execução do serviço, o serviço a ser realizado e a sua quantidade (a quantidade será fator multiplicativo para o preço). O pedido pode conter apenas serviços, serviços e produtos ou apenas produtos. 
Ao salvar o pedido será gerado seu número (número de pedido ++) e salvo no banco. 
O pedido deverá ser aprovado para ser enviado para a realização (botão aprovar pedido). 
Ao aprovar o pedido, os seus valores serão enviados ao modulo “faturamento” como contas a receber em aberto. 
Com o pedido salvo, será possível imprimi-lo, cancelá-lo, alterá-lo e finalizá-lo. 
Quando o pedido é aprovado, o serviço pode ser encaminhado para a execução. 
Finalizando a execução do serviço é necessário finalizar o pedido. Ao finalizar o pedido a tela do faturamento correspondente deve abrir em pop-up para baixa do valor (valor recebido). 
Faturamento **** Valores a receber e valores recebidos. 
A tela inicial pode conter uma pesquisa para o pedido. Pelo número do pedido pode ser carregado seu faturamento correspondente. 

 