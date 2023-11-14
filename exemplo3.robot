*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.example.com
${SEARCH_TERM}    Robot Framework

*** Test Cases ***
Realizar Busca e Verificar Resultados
    Abrir o navegador
    Acessar a página
    Preencher campo de busca
    Clicar em Pesquisar
    Verificar resultados da busca
    Fechar o navegador

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}

Acessar a página
    Go To    ${URL}

Preencher campo de busca
    Input Text    id=search    ${SEARCH_TERM}

Clicar em Pesquisar
    Click Button    id=search-button

Verificar resultados da busca
    Wait Until Page Contains    ${SEARCH_TERM}
    Log    Os resultados da busca foram encontrados com sucesso.

Fechar o navegador
    Close Browser