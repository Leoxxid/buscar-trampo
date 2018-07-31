# Buscar Trampo

[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](LICENSE) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)

Buscar Trampo é um projeto de estudo que centraliza vagas de programação distribuídas pela internet. O processo é simples, você pesquisa a vaga que deseja e caso se interesse é encaminhado para o site que a disponibilizou.

## Índice

- [Pré requisitos](#pré-requisitos)
- [Primeiros passos](#primeiros-passos)
- [Como contribuir](#como-contribuir)
- [Autores](#autores)
- [Licença](#licensa)

### Pré requisitos

É preciso ter instalado em sua máquina:

- Docker
- Docker Compose

## Primeiros passos

Siga as seguintes instruções para ter uma cópia deste projeto e conseguir executá-lo localmente.

Depois de copiar o repositório para sua máquina, acesse o diretório raiz do projeto e:

1.  Construa o container

```
docker-compose build
```

2.  Crie o banco de dados e execute as migrations

```
docker-compose run --rm website bundle exec rails db:create
```

3.  Suba o projeto

```
docker-compose up
```

## Como contribuir

Por favor leia [CONTRIBUTING.md](CONTRIBUTING.md) para saber detalhes sobre nossa conduta e processo de pull requests.

## Autores

Projeto iniciado pelos seguintes desenvolvedores

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://drive.google.com/uc?id=1J6kyIZF5A4xEpvoU_QPnASwEL3BlZyho" width="100px;"/><br /><sub><b>João Chaves </b></sub>](https://github.com/jchavesjr)<br /> | [<img src="https://drive.google.com/uc?id=1pH3IntPVkjF9m9Qss_x3Zi6nz2rJiDRQ" width="100px;"/><br /><sub><b>Armando Del Col</b></sub>](https://github.com/DinhuX)<br /> | [<img src="https://drive.google.com/uc?id=1odqy22fU-mB6LDVCNQUTAxgqlgc1PDvG" width="100px;"/><br /><sub><b>Jhonatan Martins</b></sub>](https://github.com/JhoMartins)<br /> | [<img src="https://avatars2.githubusercontent.com/u/15186322?s=460&v=4" width="100px;"/><br /><sub><b>Léo Rocha</b></sub>](https://github.com/Leoxxid)<br /> | [<img src="https://drive.google.com/uc?id=1ZkeNpyj48FJmGLN8MAuRNp5QwNWR5frG" width="100px;"/><br /><sub><b>Henrique Montalione</b></sub>](https://github.com/henriquemontalione)<br /> |
| :---: | :---: | :---: | :---: | :---: |

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes
