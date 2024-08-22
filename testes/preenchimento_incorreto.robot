*** Settings ***
Resource      ../resources/main.robot
Test Setup   Dado que o usuario acesse Organo
Test Teardown  Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido o sistema exibe uma mensagem de campo obrigatório
    Dado que o usuario selecione o botão criar card
    Então sistema deve exibir mensagem de campo obrigatório
    