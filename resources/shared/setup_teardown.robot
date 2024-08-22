*** Settings ***
Resource    ../main.robot

*** Keywords ***
Dado que o usuario acesse Organo
    Open Browser   url=http://localhost:3000/  browser=Chrome

Fechar o navegador
    Close Browser