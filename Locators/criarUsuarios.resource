***Variables***
# Locators
${input_primeiro_nome}                    id:user_name
${input_ultimo_nome}                      id:user_lastname
${input_email}                            id:user_email
${input_Endereco}                         id:user_address
${input_universidade}                     id:user_university
${input_profissao}                        id:user_profile
${input_genero}                           id:user_gender
${input_idade}                            id:user_age
${botao_criar}                            name:commit
${botao_voltar}                           xpath://a[@class='btn waves-light red'][contains(.,'Voltar')]
${mensagem_usuario_cadastrado_sucesso}    xpath://p[contains(@id,'notice')]


# Dados válidos utilizados para cadastra um novo usuario
${primeiroNome}                           Aarão
${ultimoNome}                             Da Silva
${Email}                                  teste123@teste.com
${endereco}                               Teste do teste nº777
${universidade}                           Fagammon
${profissao}                              automation QA
${genero}                                 Masculino
${idade}                                  22
${usuarioCriadoSucesso}                   Usuário Criado com sucesso
${paginaInicial}                          https://automacaocombatista.herokuapp.com/treinamento/home
${errorNomeSemPreencher}                  Name translation missing: pt-BR.activerecord.errors.models.user.attributes.name.blank
${errorEmailSemPreencher}                 Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.blank
${errorEmailInvalido}                     Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.invalid
