*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.example.com

*** Test Cases ***
Exemplo de Automação de Testes
    Abrir o navegador
    Acessar a página
    Verificar título da página
    Fechar o navegador

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}

Acessar a página
    Go To    ${URL}

Verificar título da página
    Title Should Be    Example Domain

Fechar o navegador
    Close Browser