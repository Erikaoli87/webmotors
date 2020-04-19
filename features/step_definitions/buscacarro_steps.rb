Dado("que realizo acesso a pagina de busca") do
  @busca_page.busca
  @busca_page.campo_pesquisa
end

Quando("preencho {string}, {string} e {string}") do |marca, modelo, versao|
  @busca_page.carro(marca, modelo, versao)
end

Então("devo ver o resultado da busca {string}") do |resultado|
  expect(@busca_page.resposta).to have_content resultado
end

Dado("que realizo acesso a pagina de busca estoque de loja") do
  @busca_page.estoque
  @busca_page.campo_pesquisa
end
