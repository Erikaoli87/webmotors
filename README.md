Para executar a automação será necessario ter os seguinte componentem e ferramentas instaladas na Máquina em que irá realizar a execução dos testes

1. Emulador de Console (Utilizo o CMDER, mas pode ser usado qualquer um de preferência)   
2. Ruby on Rails 2.6.6-1
3. Selenium 
4. Geckodriver - Versão 0.26.0
5. Firefox - Versão 75.0 (Automação será executada no navegador Firefox)

Para executar a automação deverá:
1. Abrir o Console
2. Acessar a pasta que contenha o prejeto de Automação de Teste (..autowebmotors)
3. digitar a seguinte linha de comando:
    cucumber (acionar a tecla Enter do teclado)
	
	
Ferramentas - Configurando o Ambiente no Windows:

1- Emulador de Console do CMDER (https://cmder.net/ - Download full). 
Obs: Caso opte pela utilização do mesmo deverá criar uma pasta no disco principal do sistema cd:, (ex nome pasta: tools) 
Acessar no windows as configurações do Painel de Controle \Sistema e Segurança\ Sistema -> Configurações Avançadas do Sistema -> Variáveis de Ambiente
Em variáveis do sistema, selecionar o Path -> clicar em editar -> clicar no botão novo e adicionar o caminho de exemplo de acordo com a pasta que o cmder foi instalado
ex: “C:\tools\cmder\vendor\git-for-windows\bin” e “C:\tools\cmder\vendor\git-for-windows\usr\bin” (deve adicionar esses dois caminhos no path).

2 - Instale o Ruby no Windows / Devkit

Baixe em: http://rubyinstaller.org/downloads/
Baixar a opção Ruby + Devkit
Executar o arquivo baixado e seguir as instruções clicando em ‘next’ (Seguir com a instalação padrão)
No Console, digite o comando ruby –v, der tudo certo você vai ver a versão instalada. 
Para prosseguir com a instalação do Devkit, no terminal digite o comando ridk install e utilizar a opção 3

3 - Instalando o Bundler

No prompt de comando digite:
gem install bundler

4 - Instalando Geckodriver

Baixe em: https://github.com/mozilla/geckodriver/releases
Descompacte o arquivo dentro de uma pasta do sistema (Utilizo a pasta Windows)

5 - Instalando ChromeDriver

Baixe em: https://chromedriver.storage.googleapis.com/index.html  baixar a versão do navegador utilizado na maquina
Descompacte o arquivo dentro de uma pasta do sistema (Utilizo a pasta Windows)

Rodando a Automação:

1 - Faça o clone do repositorio no Git:
git clone <url_do_reporitorio>

2 - Instale as dependencias do projeto com o comando:
bundle init

3 - Por padrão a automação irá rodar em cima do browser Firefox, para rodar os testes digite o comando:
cucumber

4 - Mas se desejar rodar a automação usando o Chrome. Digite o comando:
cucumber -p chrome
5 – Para acessar os relatórios da execução acesse a pasta log o qual contém o arquivo report.html
