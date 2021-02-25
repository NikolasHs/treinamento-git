***Settings***
Library       SeleniumLibrary
Resource      ../Locators/criarUsuarios.resource
***Variables***
${URL}        https://automacaocombatista.herokuapp.com/users/new
${BROWSER}    chrome

***Keywords***
# Setup e Teardown
Abrir navegador
    Open Browser                ${URL}                                    ${BROWSER}

Fechar navegador
    Close Browser

# Commons
Dado que o usuario esteja na pagina de Cadastrar usuario
    Go To                       ${URL}


# Caso de teste 01: Cadastrar um novo usuario
Quando o usuario preencha todos os campos corretamente
    Input Text                  ${input_primeiro_nome}                    ${primeiroNome}
    Input Text                  ${input_ultimo_nome}                      ${ultimoNome}
    Input Text                  ${input_email}                            ${Email}
    Input Text                  ${input_Endereco}                         ${endereco}
    Input Text                  ${input_universidade}                     ${universidade}
    Input Text                  ${input_profissao}                        ${profissao}
    Input Text                  ${input_genero}                           ${genero}
    Input Text                  ${input_idade}                            ${idade}


E clique no botão "criar"
    Click Element               ${botao_criar}

Então o deve ser exibido uma mensagem de usuario criado com sucesso
    Element Text Should Be      ${mensagem_usuario_cadastrado_sucesso}    ${usuarioCriadoSucesso}


# Caso de teste 02: Correto funcionamento do botão voltar
Quando o usuario clicar no botão Voltar
    Click Element               ${botao_voltar}

Então o usuario deve ser redirecionado para a pagina inicial
    Wait Until Page Contains    Bem vindo                                 timeout=2                  error=Redirecionamento errado ou pagina não carregou
    Location Should Be          ${paginaInicial}


# Caso de testes 03:
Quando o usuario nao preencher nenhum dos campos da tela e clicar no botao "Criar"
    Click Element               ${botao_criar}

Então deve ser exibida uma pagina com mensagems de erro para os campos nome e email
    Wait Until Page Contains    3 errors
    Wait Until Page Contains    ${errorNomeSemPreencher}                  timeout=2                  error=Mensagem de erro não encontrada
    Wait Until Page Contains    ${errorEmailSemPreencher}                 timeout=2                  error=Mensagem de erro não encontrada
    Wait Until Page Contains    ${errorEmailInvalido}                     timeout=2                  error=Mensagem de erro não encontrada
