# README

Você precisará iniciar os aplicativos Trampos e api_consumer em sua máquina local ... 

Inicie o aplicativo Trampos em 3000 (a porta padrão). 

$ cd trampos 
$ rails s  

iniciará o serviço de provedor de API na porta 3000 NOTA: Para que o código do consumidor da API funcione, o aplicativo do Trampos deve estar em execução 

* Inicie o aplicativo api_consumer em outra porta, digamos 3030 

$ cd api_consumer 
$ rails s -p 3030 

* Vá para a página do aplicativo: http://localhost:3030/companies 

* isso mostrará todas companias com opções para edição | excluir e link para riar uma nova compania. 

* Em breve atualizo com os requerimentos necessários.
