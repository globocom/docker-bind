# Docker-bind

Projeto feito para a criação de uma imagem docker com o bind configurado. 

## Criando a imagem:

`docker build -t 'name' .`  
## Criando rede:
`docker network create --driver bridge name_network` 
## Rodando o container:

`docker run -d -v $(pwd)/db.servicoa:/data/bind/db.servicoa -v $(pwd)/db.servicob:/data/bind/db.servicob -v $(pwd)/db.servicoc:/data/bind/db.servicoc -v $(pwd)/named.conf.local:/data/bind/named.conf.local -v $(pwd)/named.conf.options:/data/bind/named.conf.options --net name_network 'name'`
## Rodando container modo interativo:
`docker run -itd -v $(pwd)/db.servicoa:/data/bind/db.servicoa -v $(pwd)/db.servicob:/data/bind/db.servicob -v $(pwd)/db.servicoc:/data/bind/db.servicoc -v $(pwd)/named.conf.local:/data/bind/named.conf.local -v $(pwd)/named.conf.options:/data/bind/named.conf.options --net name_network 'name' sh`



