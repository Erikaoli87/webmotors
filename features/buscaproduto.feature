 #language:pt

      Funcionalidade: Alteração campos de Busca
      Validar os campos de busca de Marca, Modelo e Versão
      da página de resultado de busca da Webmotors e da
      listagem de estoque de uma determinada loja.

      Esquema do Cenario: Validar Campos de Busca

      Validar funcionalidades dos campos alterados

      Dado que realizo acesso a pagina de busca
      Quando preencho <marca>, <modelo> e <versao>
      Então devo ver o resultado da busca <resultado>

      Exemplos:
      | marca   | modelo | versao                          | resultado                                  |
      | "Honda" | "City" | "1.5 DX 16V Flex 4P Manual"     | "HONDA CITY 1.5 DX 16V FLEX 4P MANUAL"     |
      | "Honda" | "City" | "1.5 DX 16V FLEX 4P AUTOMÁTICO" | "HONDA CITY 1.5 DX 16V FLEX 4P AUTOMÁTICO" |
      | "Honda" | "City" | "1.5 EX 16V FLEX 4P MANUAL"     | "HONDA CITY 1.5 EX 16V FLEX 4P MANUAL"     |
      | "Honda" | "City" | "1.5 SPORT 16V FLEX 4P MANUAL"  | "HONDA CITY 1.5 SPORT 16V FLEX 4P MANUAL"  |
      
      @estoque
      Esquema do Cenario: Validar Campos de Busca Estoque de Loja

      Validar funcionalidades dos campos alterados

      Dado que realizo acesso a pagina de busca estoque de loja
      Quando preencho <marca>, <modelo> e <versao>
      Então devo ver o resultado da busca <resultado>

      Exemplos:
      | marca   | modelo | versao                         | resultado                                 |
      | "Honda" | "City" | "1.5 SPORT 16V FLEX 4P MANUAL" | "HONDA CITY 1.5 SPORT 16V FLEX 4P MANUAL" |
