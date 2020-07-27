***Settings***
Documentation       Testes do login no Walmart Mobile

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Login dados válidos
    Dado que acesso a página principal
    Quando submeto o meu email "amanda_amy12@hotmail.com"
    E submeto minha senha "amanda12"
    Então devo receber a mensagem "Hi Amanda!"

Login email inválido
    Dado que acesso a página principal
    Quando submeto o meu email "amanda#hotmail.com"
    E submeto minha senha "amanda12"
    Então devo receber a mensagem "Please enter a valid email address"

Login email não preenchido
    Dado que acesso a página principal
    Quando submeto o meu email "${EMPTY}"
    E submeto minha senha "amanda12"
    Então devo receber a mensagem "Please enter an email address"
    


