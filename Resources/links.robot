***Settings***
Library       SeleniumLibrary
Resource      ../Locators/links.resource
***Variables***
${URL}        https://automacaocombatista.herokuapp.com/buscaelementos/links
${BROWSER}    chrome

***Keywords***
# Setup e Teardown
Abrir navegador
    Open Browser                ${URL}                                   ${BROWSER}

Fechar navegador
    Close Browser

# Commons
Dado que o usuario esteja na pagina de links
    Go To                       ${URL}

# Caso de teste 01: Verificar link com retorno 200
Quando o usuario clicar no link 200 ok
    Click Element               ${link_200_OK}

Então o deve ser exibido uma mensagem de Success!!
    Wait Until Page Contains    ${mensagem_200_OK}                       timeout=2     error=Mensagem esperada não encontrada na página
    ${urlCarregada}=            Get Location
    Should Be True              '${URL_200}' == '${urlCarregada}'

# Caso de teste 02: Verificar link com retorno 400
Quando o usuario clicar no link 400 Bad_request
    Click Element               ${link_400_bad_request}

Então o deve ser exibido uma mensagem de Bad Request!!
    Wait Until Page Contains    ${mensagem_400_bad_request}              timeout=2     error=Mensagem esperada não encontrada na página
    ${urlCarregada}=            Get Location
    Should Be True              '${URL_400}' == '${urlCarregada}'


# Caso de teste 03: Verificar link com retorno 404
Quando o usuario clicar no link 404 page_not_found
    Click Element               ${link_404_page_not_found}

Então o deve ser exibido uma mensagem de Page Not Found!!
    Wait Until Page Contains    ${mensagem_404_page_not_found}           timeout=2     error=Mensagem esperada não encontrada na página
    ${urlCarregada}=            Get Location
    Should Be True              '${URL_404}' == '${urlCarregada}'

# Caso de teste 03: Verificar link com retorno 500
Quando o usuario clicar no link 500 Internal server error
    Click Element               ${link_500_Internal_server_error}

Então o deve ser exibido uma mensagem de Internal Server Error!!
    Wait Until Page Contains    ${mensagem_500_Internal_server_error}    timeout=2     error=Mensagem esperada não encontrada na página
    ${urlCarregada}=            Get Location
    Should Be True              '${URL_500}' == '${urlCarregada}'
