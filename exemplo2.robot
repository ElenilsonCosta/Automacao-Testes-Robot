*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://konia.com.br
${NAME}           John Doe
${EMAIL}          john.doe@example.com

*** Test Cases ***
Preencher Formulário e Verificar Mensagem de Sucesso
    Abrir o navegador
    Acessar a página
    Preencher campos do formulário
    Clicar em Enviar
    Verificar mensagem de sucesso
    Fechar o navegador

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}

Acessar a página
    Go To    ${URL}

Preencher campos do formulário
    Input Text    id=name    ${NAME}
    Input Text    id=email   ${EMAIL}

Clicar em Enviar
    Click Button    id=submit

Verificar mensagem de sucesso
    Page Should Contain Element    id=success-message

Fechar o navegador
    Close Browser