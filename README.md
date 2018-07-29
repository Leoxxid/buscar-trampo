# Buscar Trampo
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](LICENSE) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)


Buscar Trampo é um projeto de estudo que centraliza vagas de programação distribuídas pela internet. O processo é simples, você pesquisa a vaga que deseja e caso se interesse é encaminhado para o site que a disponibilizou.

## Índice
  * [Pré requisitos](#pré-requisitos)
  * [Primeiros passos](#primeiros-passos)
  * [Como contribuir](#como-contribuir)
  * [Autores](#autores)
  * [Licensa](#licensa)

### Pré requisitos
É preciso ter instalado em sua máquina:
  * Docker
  * Docker Compose

## Primeiros passos

Siga as seguintes instruções para ter uma cópia deste projeto e conseguir executá-lo localmente.

Depois de copiar o repositório para sua máquina:
1. Construa o container
```
docker-compose build
```

2. Crie o banco de dados
```
docker-compose run --rm website bundle exec rails db:create
```

3. Suba o projeto
```
docker-compose up
```

## Como contribuir

Por favor leia [CONTRIBUTING.md](CONTRIBUTING.md) para saber detalhes sobre nossa conduta e processo de pull requests.

## Autores

Projeto iniciado pelos seguintes desenvolvedores

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://lh5.googleusercontent.com/J79BsMBwpjnrX4TU6tqIBhjwLOuiCvZ98b0mw_uKd-QWkabrH1NQu-pFSM3i2PoN6bEFk9Ej-XrEzCroaByh=w1305-h567-rw" width="100px;"/><br /><sub><b>João Chaves </b></sub>](https://github.com/jchavesjr)<br /> | [<img src="https://lh4.googleusercontent.com/Vip-DwUIU5yQBgj_PdtJ9hznPNJsl0jntOeLojPTrEjiPz92HNbBsNMPmzAb_NGi6bxVcyH4CiwQB_gW-bio=w1305-h567-rw" width="100px;"/><br /><sub><b>Armando Del Col</b></sub>](https://github.com/DinhuX)<br /> | [<img src="https://lh6.googleusercontent.com/FHCrjvfKp2fPs3OHBiNc3Y1UjjHq0UiCwKVa3H6QUVYAClhOZnWqfq3L66380i2P_Imcxw1n3wzXgNmTkD26=w1305-h567-rw" width="100px;"/><br /><sub><b>Jhonatan Martins</b></sub>](https://github.com/JhoMartins)<br /> | [<img src="https://avatars2.githubusercontent.com/u/15186322?s=460&v=4" width="100px;"/><br /><sub><b>Léo Rocha</b></sub>](https://github.com/Leoxxid)<br /> |
| :---: | :---: | :---: | :---: | :---: |
| [<img src="https://lh6.googleusercontent.com/1aAbBsEgs7YBdzPRhO66zL1wr-pLRyzR9DrqJGKlGvLGTbKfXgbzaGu8bBFn_1XNL65goi3yaBFuOVZutITN=w1305-h567" width="100px;"/><br /><sub><b>Henrique Montalione</b></sub>](https://github.com/henriquemontalione)<br /> |
<!-- ALL-CONTRIBUTORS-LIST:END -->


## Licensa

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes
