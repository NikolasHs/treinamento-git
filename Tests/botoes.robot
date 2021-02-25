***Settings***
Resource          ../Resources/botoes.robot
Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***
Caso de teste 01: Clicar no botao Raised
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no botão "Raised"
    Entao deve ser exibido a mensagem 01

Caso de teste 02: Clicar no botao Floating
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no botão "Floating"
    Entao deve ser exibido a mensagem 02

Caso de teste 03: Clicar no botao Flat
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no botão "Flat"
    Entao deve ser exibido a mensagem 03

Caso de teste 04: Clicar no botao Submmit
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no botão "Submmit"
    Entao deve ser exibido a mensagem 04

Caso de teste 05: Clicar no botao Disable
    Dado que o usuario esteja na pagina de links
    Entao deve ser exibido um botao desabilitado