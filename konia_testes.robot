*** Settings ***

Resource    konia_resources.robot
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Quem Somos"

    Dado que o usuario esteja na pagina home page da konia.com.br
    Quando ele clicar no menu "Quem Somos"
    Então o titulo da pagina deverá ser "Quem somos - Konia Consultoria e Informática"

Caso de Teste 02 - Pesquisa sobre o artigo Jmeter
    
    Dado Que O Usuario Esteja Na Pagina Home Page Da Konia.com.br
    Quando ele clicar no menu "Blog"
    E pesquisar por "Jmeter" no campo de busca
    Então Deverá Ser Exibido Na Tela Artigos Referente ao Tema Buscado 

Caso de teste 03 - Acesso ao menu "O que fazemos"

    Dado que o usuario esteja na pagina home page da konia.com.br
    Quando ele clicar no menu "O que fazemos"
    E clicar no botão "Saiba Mais" da opção Qualidade e Processo
    Então deverá exibir a tela com conteúdo referente a Qualidade e Processo

Caso de teste 04 - Acesso ao menu Contato e Preencher os dados
    Dado que o usuario esteja na pagina home page da konia.com.br
    Quando ele clicar no menu "Contato"
    E preencher todos os dados solicitados
    E Clicar no Botão "Enviar"
    Então uma mensagem deverar ser apresentada

    