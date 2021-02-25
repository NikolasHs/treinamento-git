***Settings***
Resource          ../Resources/criarUsuarios.robot
Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


***Test Cases***
Caso de teste 01: Cadastrar um novo usuario
    Dado que o usuario esteja na pagina de Cadastrar usuario
    Quando o usuario preencha todos os campos corretamente
    E clique no botão "criar"
    Então o deve ser exibido uma mensagem de usuario criado com sucesso

Caso de teste 02: Correto funcionamento do botão voltar
    Dado que o usuario esteja na pagina de Cadastrar usuario
    Quando o usuario clicar no botão Voltar
    Então o usuario deve ser redirecionado para a pagina inicial

Caso de teste 03: Validando campos obrigatorios da pagina
    Dado que o usuario esteja na pagina de Cadastrar usuario
    Quando o usuario nao preencher nenhum dos campos da tela e clicar no botao "Criar"
    Então deve ser exibida uma pagina com mensagems de erro para os campos nome e email
