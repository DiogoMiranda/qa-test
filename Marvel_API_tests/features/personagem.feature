#language: pt

Funcionalidade: Marvel personagens
Eu, como usuário
Desejo visualizar uma lista de personagens e quadrinhos
Para que possa interagir com os personagens da Marvel

Cenario: Listando 5 personagens
  Dado que eu faça um GET de cinco personagens no endpoint
  Entao devo receber um retorno de cinco personagens cadastrados


Cenario: Listar informações sobre um personagem específico
  Dado que eu faça um GET de um personagem especifico
  Entao devo receber um retorno deste personagem especifico

Cenario: Filtrar comics de acordo com um personagem específico
  Dado que realizo o filtro comics de acordo com um personagem específico
  Entao devo visualizar o filtro de comics de acordo com um personagem específico