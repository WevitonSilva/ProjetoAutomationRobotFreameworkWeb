*** Settings ***
Documentation  Essa suite testa o site da amazon.com.busca_produtos
Library         ../TestBase/TestBase.py
Test Setup       Abrir Navegadoir    ""
Test Teardown    Fechar o navegador 


*** Test Cases ***
Caso de Teste 01 - Acesspao menu "Eletronicos"
    [Documentation]  Esse teste verifica o menu eletrônicos do site da amazon.com.br
    ...  verifica a categoria computadores e Informática
    [Tags]  menus categorias
    Acesar a home page do site Amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se o título da página fica "Eletronicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um produto 
    [Documentation]  Esse teste verifica a busca de profutos
    [Tags]  busca_produtos lista_busca
    Acesar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    clicar no botão de pesquisa 
    Verificar o resultado da pesquisa, listando o produto pesquisado 

    