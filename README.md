# Docker-bind

Utilização do Docker Compose para comunicação entre containers, em um deles é executado uma aplicação em Ruby e no outro é executado um servidor DNS.

Utilizamos como base para o a aplicação a imagem ruby com a tag 2.7.2, pois ela já contém um conjunto de ferramentas que otimizam o funcionamento da aplicação. Para o Dockerfile que contém o servidor DNS, foi utilizado a imagem ubuntu. 
## Pré-requisitos:

Para utilizar esse repositório é necessário ter instalado os itens abaixo:

* Docker
* Docker Compose

# Construindo as imagens e gerando os containers:

* Acesse e edite o arquivo `/ruby/Dockerfile` para ajustá-lo de acordo com sua necessidade.

* Abaixo estão listados os arquivos de configuração do bind, caso queira alterá-los:

    * `named.conf.local`: Este arquivo contém a configuração do servidor DNS local e é aqui que você declara as zonas associadas aos domínios deste servidor.
    * `named.conf.options`: Este arquivo contém todas as opções de configuração do servidor DNS.
    * `db.servicoa`: Este arquivo contém a configuração da zona servicoa.
    * `db.servicob`: Este arquivo contém a configuração da zona servicob.
    * `db.servicoc`: Este arquivo contém a configuração da zona servicoc.

    * Caso tenha sido feita alguma alteração nos arquivos listados acima, deve-se reinicar o serviço para pegar essas alterações, para isso execute o comando:
    
        `service bind9 reload`

* Execute o comando abaixo para a construção das imagens:

`docker-compose build`

* Execute o comando abaixo para subir os serviços:

`docker-compose up`





