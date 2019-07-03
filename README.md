# DevOps, take home test

Obrigado por considerar a posição do Engenheiro de DevOps na Semantix! Nós projetamos este teste para ter uma melhor idéia sobre sua experiência e ter uma noção de como você aborda problemas que podem aparecer em nosso dia a dia.

### Pré Requisitos:

- Sistema Operacional Linux
- Docker ( https://get.docker.com/ )

### Tarefa 1 - Melhoria

A implementação melhorada deve ter essas características.

- É ao menos 2 vezes mais rápida que a atual.
- Construa um container que inicia o serviço refatorado automaticamente expondo-o na porta 4000.
- O container deverá ser fornecido via dockerfile sendo este criado de uma imagem base que contenha somente o básico de um sistema operacional de escolha (ubuntu ou centos de preferência). 
- Forneça o repositório no github ou gitlab com instruções de uso.
- Caso tenha uma idéia melhor que aumentaria ainda mais a performance do app mas que não conseguiu implementar tendo em vista as restrições anexe sua idéia nas explicações. 

### Resposta da Tarefa 1 - Melhoria:

- O Dockerfile utilizado está no diretório app.
- Foi criado um repo no dockerhub com a imagem ( python:3.6-alpine ) preparada para execução, bastando apenas executar o container e expor a porta.
- docker run -d -p 4000:8888 rafaelmcouto/semantix_python:0.1 
- curl localhost:4000/s/tour

### Tarefa 2 - Criação de Pipeline 

Forneça um container com o seu CI/CD preferido contendo um pipeline que tenha os seguintes passos: 

- Busca o repositório fornecido no item anterior.
- Cria o container via Docker build. 
- Inicia o container na porta 4000. 

Forneça o container com o seu CI/CD (tar) e instruções de implantação em um servidor linux (caso queira subir os arquivos em outro Git Repo fique a vontado)

### Resposta da Tarefa 2 - Criação de Pipeline 

- Descompactar o arquivo zipado: tar -zxf semantix.tar.gz
- Entrar no diretório semantix: cd semantix
- Executar os comandos abaixo:
- docker-compose build
- docker-compose up -d


Para o container Jenkins executar comandos docker, ele precisa ter acesso ao sock que está compartilhado. Para isso, basta executar o comando abaixo:
- sudo chown 1000:1000 /var/run/docker.sock
- Acessar a url:
- http://localhost:8080 ( Jenkins )
- A configuração está feita para criar um login e senha de acesso
- Clicar no Job semantix
- Build now
