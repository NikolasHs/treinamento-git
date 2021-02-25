***Settings***
Resource         ../Resources/InputsTextField.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Case ***
Caso de teste 01: Inserir textos na pagina
    Dado que o usuario esteja na pagina de Inputs e TextField
    Então deve ser possivel inserir textos em todos os inputs