***Settings***
Resource          ../Resources/links.robot
Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***

Caso de teste 01: Verificar link com retorno 200
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no link 200 ok
    Então o deve ser exibido uma mensagem de Success!!

Caso de teste 02: Verificar link com retorno 400
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no link 400 Bad_request
    Então o deve ser exibido uma mensagem de Bad Request!!

Caso de teste 03: Verificar link com retorno 404
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no link 404 page_not_found
    Então o deve ser exibido uma mensagem de Page Not Found!!

Caso de teste 04: Verificar link com retorno 500
    Dado que o usuario esteja na pagina de links
    Quando o usuario clicar no link 500 Internal server error
    Então o deve ser exibido uma mensagem de Internal Server Error!!