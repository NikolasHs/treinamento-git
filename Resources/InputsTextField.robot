***Settings***
Library       SeleniumLibrary
Resource      ../Locators/InputsTextField.resource
***Variables***
${URL}        https://automacaocombatista.herokuapp.com/buscaelementos/inputsetextfield
${BROWSER}    chrome

***Keywords***
# Setup e Teardown
Abrir navegador
    Open Browser     ${URL}                    ${BROWSER}

Fechar navegador
    Close Browser

# Caso de teste 01: Inserir textos na pagina
Dado que o usuario esteja na pagina de Inputs e TextField
    Go To            ${URL}

Então deve ser possivel inserir textos em todos os inputs
    Input Text       ${input_primeiro_nome}    ${primeiroNome}
    Input Text       ${input_ultimo_nome}      ${ultimoNome}
    Input Text       ${input_password}         ${password}
    Input Text       ${input_email}            ${email}
    Input Text       ${input_textArea}         ${textArea}
