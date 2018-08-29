#encoding: utf-8
#language: pt

@logar
Funcionalidade: Buscas no site
  Como comercial
  Gostaria que o site possuisse uma ferramenta de busca
  Para que os clientes possam buscar e comprar produtos

  Cenário: Busca por produto válido
    Dado que carreguei a home
    Quando buscar pelo produto phone
    Então deve apresentar produtos nos resultados


  Cenário: Busca sem resultados


  Cenário: Buscar e acessar página de produto


  Cenário: Buscar e adicionar produto ao carrinho