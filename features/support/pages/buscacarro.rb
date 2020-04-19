class BuscaPage
  include Capybara::DSL

  def busca
    visit "/carros/estoque?tipoveiculo=carros&estadocidade=estoque"
  end

  def estoque
    visit "/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concessionária%7Cloja"
  end

  def campo_pesquisa
    find(".Filters__container__group .Filters__line").click
  end

  def carro(marca, modelo, versao)
    find(:xpath, "(//input[@value=''])[10]").set marca
    find(".Filters__line.Filters__line__result").click

    find(".Filters__line.Filters__line--gray").click
    find(:xpath, "(//input[@value=''])[9]").set modelo
    find(".Filters__line.Filters__line__result").click

    find(:xpath, "//div[@id='root']/main/div/div[2]/div/div/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]").click
    find(:xpath, "(//input[@value=''])[8]").set versao
    find(".Filters__line.Filters__line__result").click
  end

  def resposta
    find(".FilterResult__scroll__container").text
  end
end
