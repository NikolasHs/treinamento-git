***Settings***
Library       SeleniumLibrary
Resource      ../Locators/botoes.resource
***Variables***
${URL}        https://automacaocombatista.herokuapp.com/buscaelementos/botoes
${BROWSER}    chrome

***Keywords***
# Setup e Teardown
Abrir navegador
    Open Browser                        ${URL}                    ${BROWSER}

Fechar navegador
    Close Browser

#commons
Dado que o usuario esteja na pagina de links
    Go To                               ${URL}


# Caso de teste 01: Clicar no botao Raised
Quando o usuario clicar no botão "Raised"
    Click Element                       ${botao_raised}
Entao deve ser exibido a mensagem 01
    Wait Until Page Contains Element    ${mensagem_esperada01}    timeout=1     error=botão não encontrado


# Caso de teste 02: Clicar no botao Floating
Quando o usuario clicar no botão "Floating"
    Click Element                       ${botao_floating}
Entao deve ser exibido a mensagem 02
    Wait Until Page Contains Element    ${mensagem_esperada01}    timeout=1     error=botão não encontrado

# Caso de teste 03: Clicar no botao Flat
Quando o usuario clicar no botão "Flat"
    Click Element                       ${botao_flat}
Entao deve ser exibido a mensagem 03
    Wait Until Page Contains Element    ${mensagem_esperada01}    timeout=1     error=botão não encontrado

# Caso de teste 04: Clicar no botao Submmit
Quando o usuario clicar no botão "Submmit"
    Click Element                       ${botao_submmit}
Entao deve ser exibido a mensagem 04
    Wait Until Page Contains Element    ${mensagem_esperada01}    timeout=1     error=botão não encontrado

# Caso de teste 05: Clicar no botao Disable
Entao deve ser exibido um botao desabilitado
    Wait Until Page Contains Element    ${botao_disable}          timeout=1     error=botão não encontrado