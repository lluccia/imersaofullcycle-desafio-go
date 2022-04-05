# Imersão FullCycle - Desafio Go - Fase 01

Esse desafio consiste em criar uma imagem Docker de uma aplicação em Go que imprima "Code.education Rocks!" ao ser executada.

Esse desfio impõe uma regra adicional de que a imagem Docker final não pode ultrapassar o tamanho de 2MB.


## Build

Para fazer o build da imagem, execute o seguinte comando:
```sh
docker build . -t lluccia/codeeducation
```

## Run

Para executar a aplicação utilize o seguinte comando:

```sh
docker run --rm lluccia/codeeducation
```

## ref

- <https://imersao.fullcycle.com.br/desafio/Imersao30/desafio1-go>