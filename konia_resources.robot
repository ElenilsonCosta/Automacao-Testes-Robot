*** Settings ***

Library    SeleniumLibrary


*** Variables ***
${URL}    https://konia.com.br/
${MENU_QUEM_SOMOS}    //*[@id="menu-item-223"]/a
${SOBRE_QUEM_SOMOS}    https://konia.com.br/quem-somos/
${MENU_BLOG}    //*[@id="menu-item-218"]/a
${CAMPO_PESQUISA-BLOG}    //*[@id="wp-block-search__input-1"]
${BOTÃO_PESQUISA}    //*[@id="block-2"]/form/div/button
${VALIDAÇÃO_DO_ARTIGO}    //*[@id="breadcrumbs"]/span/span[1]/a
${CAMPO_O QUE FAZEMOS}    //*[@id="menu-item-221"]/a
${CAMPO_QUALIDADE E PESQUISA}    //*[@id="post-206"]/div[2]/div/div/div/div/section/div/div/div[3]/div/a
${VALIDAÇÃO_DO CONTEUDO}    //*[@id="breadcrumbs"]/span/span[1]/a
${BOTÃO_CONTATO}    //*[@id="menu-item-220"]/a
${CAMPO_NOME}    //*[@id="wpforms-520-field_1"]
${CAMPO_EMAIL}    //*[@id="wpforms-520-field_2"]
${CAMPO_TELEFONE}    //*[@id="wpforms-520-field_3"]
${CLICAR_TERMOS}    //*[@id="privacidade"]
${CLICAR_NÃO_SOU_ROBO}    //*[@id="checkbox"]
${BOTÃO_ENVIAR}    //*[@id="wpforms-submit-520"]

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window 

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que o usuario esteja na pagina home page da konia.com.br   
    Go To    url=${URL}

Quando ele clicar no menu "Quem Somos"
    Click Element    locator=${MENU_QUEM_SOMOS}

Então o titulo da pagina deverá ser "Quem somos - Konia Consultoria e Informática"
    Wait Until Page Contains    text=${SOBRE_QUEM_SOMOS}

Quando ele clicar no menu "Blog"
    Click Element    locator=${MENU_BLOG}

E pesquisar por "${PESQUISA}" no campo de busca
    Input Text    locator=${CAMPO_PESQUISA-BLOG}   text=${PESQUISA}
    Click Element    locator=${BOTÃO_PESQUISA}

Então deverá ser exibido na tela artigos referente ao tema buscado
    Wait Until Page Contains Element    locator=${VALIDAÇÃO_DO_ARTIGO}

Quando ele clicar no menu "O que fazemos"
    Click Element    locator=${CAMPO_O QUE FAZEMOS}

E clicar no botão "Saiba Mais" da opção Qualidade e Processo
    Click Element    locator=${CAMPO_QUALIDADE E PESQUISA}

Então deverá exibir a tela com conteúdo referente a Qualidade e Processo
    Wait Until Page Contains Element    locator=${VALIDAÇÃO_DO CONTEUDO}

Quando ele clicar no menu "Contato"
    Click Element    locator=${BOTÃO_CONTATO}

E preencher todos os dados solicitados
    Input Text    locator=${CAMPO_NOME}    text="ELENILSON COSTA BARBOSA"
    Input Text    locator=${CAMPO_EMAIL}    text="elenilsoncosta2@gmail.com"
    Input Text    locator=${CAMPO_TELEFONE}    text="92992011839"
    Click Element    locator=${CLICAR_TERMOS}
    Click Element    locator=${BOTÃO_ENVIAR}


