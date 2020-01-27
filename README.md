## Rental APi_Consumer

API Consumer é um projeto modelo de como uma app pode consumir uma API de outro app. O foco do sistema é para fins de aprendizado, onde um terceiro poderia gerenciar os registros de companias no sistema.


## Como iniciar o projeto

Para executar esse projeto você deve ter um computador, preferencialmente com
Linux, com a linguagem de programação Ruby na versão 2.6.3

Dentro do diretório do projeto, você deve instalar as dependências definidas no
arquivo `Gemfile` com o comando `bundle install`.

Você precisará iniciar os aplicativos Trampos e Api_consumer em sua máquina local ... 

Saiba como instalar o Trampos aqui : https://github.com/roberson-miguel/trampos

$ cd trampos 
$ rails s  

iniciará o serviço de provedor de API na porta 3000 

NOTA: Para que o código do api_consumer funcione, o aplicativo do Trampos deve estar em execução.

* Inicie o aplicativo api_consumer em outra porta, digamos 3030 

$ cd api_consumer 
$ rails s -p 3030 

* Vá para a página do aplicativo: http://localhost:3030/companies 

* isso mostrará todas companias com opções para edição | excluir e link para riar uma nova compania. 


