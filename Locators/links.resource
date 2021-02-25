*** Variable ***
#Locators
${link_200_OK}                           xpath://a[@data-method='get'][contains(.,'Ok 200 - Sucess')]
${link_400_bad_request}                  xpath://a[@data-method='get'][contains(.,'Erro 400 - Bad Request')]
${link_404_page_not_found}               xpath://a[@data-method='get'][contains(.,'Erro 404 - Page not found')]
${link_500_Internal_server_error}        xpath://a[@data-method='get'][contains(.,'Erro 500 - Internal Server Error')]


# Dados válidos utilizados para cadastra um novo usuario
${mensagem_200_OK}                       Success!!
${mensagem_400_bad_request}              Bad Request!!
${mensagem_404_page_not_found}           Page Not Found!!
${mensagem_500_Internal_server_error}    Internal Server Error!!
${URL_200}                               https://automacaocombatista.herokuapp.com/buscaelementos/success
${URL_400}                               https://automacaocombatista.herokuapp.com/buscaelementos/badrequest
${URL_404}                               https://automacaocombatista.herokuapp.com/buscaelementos/notfound
${URL_500}                               https://automacaocombatista.herokuapp.com/buscaelementos/internalservererror