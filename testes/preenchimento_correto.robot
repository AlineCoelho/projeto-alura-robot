*** Settings ***   
Resource       ../resources/main.robot  
Test Setup     Dado que o usuario acesse Organo
Test Teardown  Fechar o navegador

*** Test Cases ***
@Verificar se ao preencher os campos do formulario corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Dado que preencha os campos do formulario
    E clique no botão criar card
    Então exibe card no time esperado

@Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    E clique no botão criar card
    Então identificar 3 cards no time esperado

@Verificar se é possivel criar um card para cada time disponivel se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    Então criar e identificar 1 card em cada time disponivel 